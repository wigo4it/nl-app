/// <binding AfterBuild='default' Clean='clean' ProjectOpened='watch, sass:watch, ts:watch' />
"use strict";

var gulp = require("gulp"),
    concat = require("gulp-concat"),
    cssmin = require("gulp-cssmin"),
    uglify = require("gulp-uglify"),
    merge = require("merge-stream"),
    del = require("del"),
    sass = require("gulp-sass"),
    runSequence = require("run-sequence"),
    bundleconfig = require("./bundleconfig.json"),
    browserify = require("browserify"),
    source = require("vinyl-source-stream"),
    tsify = require("tsify"),
    autoprefixer = require("autoprefixer"),
    postcss = require("gulp-postcss"),
    exec = require("child_process").exec;


/* Default Task */
gulp.task("default", function (callback) {
    runSequence("ts-compile-and-bundle", "sass", "min", callback);
});

/* Typescript compilation and Bundling */
gulp.task("ts-compile-and-bundle", function () {
    return browserify({
        basedir: ".",
        debug: true,
        entries: ["ts/nlapp.ts"],
        cache: {},
        packageCache: {}
    })
        .plugin(tsify)
        .bundle()
        .pipe(source("nlapp-bundle.js"))
        .pipe(gulp.dest("scripts"));
});

/* Minification */
var regex = {
    css: /\.css$/,
    js: /\.js$/
};

gulp.task("min", ["min:js", "min:css"]);

gulp.task("min:js", function () {
    var tasks = getBundles(regex.js).map(function (bundle) {
        return gulp.src(bundle.inputFiles, { base: "." })
            .pipe(concat(bundle.outputFileName))
            .pipe(uglify())
            .pipe(gulp.dest("."));
    });
    return merge(tasks);
});

gulp.task("min:css", function () {
    var tasks = getBundles(regex.css).map(function (bundle) {
        return gulp.src(bundle.inputFiles, { base: "." })
            .pipe(concat(bundle.outputFileName))
            .pipe(cssmin())
            .pipe(gulp.dest("."));
    });
    return merge(tasks);
});

/* Clean up */
gulp.task("clean", ["clean_files", "clean_webconfig"]);

/* Clean up generated files */
gulp.task("clean_files", function () {
    var files = bundleconfig.map(function (bundle) {
        return bundle.outputFileName;
    });

    return del(files);
});

/* Clean up sensitive data in web.config */
gulp.task('clean_webconfig', function (callback) {
    exec("Powershell.exe  -executionpolicy remotesigned ..\\RestoreWebConfig.ps1;", function (err, stdout, stderr) {
        console.log(stdout);
        console.log(stderr);
        callback(err);
    });
});


/* Sass compilation */
gulp.task("sass", function () {
    return gulp.src("./sass/**/*.scss")
        .pipe(sass().on("error", sass.logError))
        .pipe(postcss([autoprefixer({ browsers: ["last 4 versions"] })]))
        .pipe(gulp.dest("./css"));
});

/* Watches */
gulp.task("watch", function () {
    getBundles(regex.js).forEach(function (bundle) {
        gulp.watch(bundle.inputFiles, ["min:js"]);
    });

    getBundles(regex.css).forEach(function (bundle) {
        gulp.watch(bundle.inputFiles, ["min:css"]);
    });
});

gulp.task("sass:watch", function () {
    gulp.watch("./sass/**/*.scss", ["sass"]);
});

gulp.task("ts:watch", function () {
    gulp.watch("./ts/*.ts", ["ts-compile-and-bundle"]);
});

function getBundles(regexPattern) {
    return bundleconfig.filter(function (bundle) {
        return regexPattern.test(bundle.outputFileName);
    });
}
