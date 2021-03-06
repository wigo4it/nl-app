SET IDENTITY_INSERT [dbo].[cmsContent] ON 

INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (42, 1143, 1142)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (44, 1145, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (186, 1356, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (187, 1357, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (188, 1358, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (245, 1462, 1413)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (264, 1481, 1141)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (265, 1482, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (267, 1484, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (268, 1485, 1031)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (270, 1487, 1151)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (271, 1488, 1153)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (272, 1489, 1158)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (273, 1490, 1151)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (275, 1492, 1321)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (276, 1493, 1335)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (277, 1494, 1349)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (278, 1495, 1032)
INSERT [dbo].[cmsContent] ([pk], [nodeId], [contentType]) VALUES (279, 1496, 1151)
SET IDENTITY_INSERT [dbo].[cmsContent] OFF
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (535, 1082, N'contentBase', N'icon-document-dashed-line', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (536, 1083, N'feature', N'icon-plugin', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (538, 1085, N'navigationBase', N'icon-nodes', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (548, 1141, N'home', N'icon-home', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (549, 1142, N'welkom', N'icon-tactics', N'folder.png', NULL, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (550, 1151, N'categorie', N'icon-bulleted-list', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (551, 1152, N'seoBase', N'icon-nodes', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (552, 1153, N'onderwerp', N'icon-thumbnail-list', N'folder.png', N'Een onderwerp binnen een Categorie', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (553, 1158, N'infoPagina', N'icon-article', N'folder.png', N'Een InfoPagina behoort tot een of meer onderwerpen en bevat gedetailleerde informatie over een onderwerp. Een InfoPagina is alleen in 1 gemeente beschikbaar en kan niet over meerdere gemeentes gebruikt worden.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (556, 1169, N'categoriecontent', N'icon-nodes', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (557, 1173, N'onderwerpContent', N'icon-nodes', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (559, 1186, N'infoPaginaContent', N'icon-document', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (562, 1321, N'contentHolder', N'icon-folder-outline', N'folder.png', N'Dit document type dient allen als houder van multisite content en bevat daarom geen eigen properties.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (563, 1325, N'infoPaginaLink', N'icon-globe-alt', N'folder.png', N'InfoPaginaLink bevat zelf geen informatie, maar linkt voor de inhoud naar een InfoPagina.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (564, 1329, N'InfoPaginaLinkNL', N'icon-globe-alt color-deep-orange', N'folder.png', N'InfoPaginaLinkNL bevat zelf geen informatie, maar linkt voor de inhoud naar een InfoPaginaNL.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (565, 1335, N'infoPaginaNL', N'icon-article color-deep-orange', N'folder.png', N'Een InfoPaginaNL is hetzelfde al een InfoPagina, Een InfoPaginaNL kan alleen in Geelde Content directory aangemaakt worden en kan door meerdere gemeentes gebruikt worden.', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (566, 1349, N'search', N'icon-search', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (569, 1369, N'devTestDocType', N'icon-document', N'folder.png', N'Dit is een tijdelijke doctype ter test van deployment', 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (571, 1381, N'privacyContent', N'icon-document', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (573, 1400, N'kaartPagina', N'icon-map-location', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (574, 1413, N'html_404', N'icon-flash', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (575, 1414, N'xmlSitemap', N'icon-document', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (577, 1444, N'Manifest', N'icon-document', N'folder.png', NULL, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [allowAtRoot]) VALUES (578, 1445, N'serviceWorkerFiles', N'icon-document', N'folder.png', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1085, 1158)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1085, 1335)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1152, 1141)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1152, 1151)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1152, 1153)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1152, 1400)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1141, 1151, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1141, 1349, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1142, 1141, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1142, 1321, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1142, 1413, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1151, 1153, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1151, 1400, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1153, 1158, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1153, 1325, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1153, 1329, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1321, 1321, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1321, 1335, 1)
SET IDENTITY_INSERT [dbo].[cmsContentVersion] ON 

INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (98, 1145, N'bcf72512-bf16-4aeb-aec2-aef219e95e8e', CAST(N'2018-05-01T16:03:31.763' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (432, 1356, N'ed9ef2e6-38d9-411f-8d77-7984347936bc', CAST(N'2018-05-01T16:03:11.293' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (433, 1357, N'1ad01729-7d23-433b-9080-283a0fe18e74', CAST(N'2018-06-25T09:53:34.093' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (434, 1358, N'6c0f3e3c-9c81-43ca-a641-bfc8fd39ca24', CAST(N'2018-06-25T09:54:00.243' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2380, 1143, N'6e4299da-2fbb-4857-9eec-7b598068936d', CAST(N'2019-03-14T15:43:45.100' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2431, 1482, N'ee9f5ee3-0da2-4d60-9910-ed50d83a139d', CAST(N'2019-03-14T14:12:36.307' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2433, 1484, N'7c698dc1-574d-4584-92ec-d74dc7e7970a', CAST(N'2019-03-14T14:13:21.913' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2434, 1485, N'a0b03d76-864a-4b8d-bfb8-7004fae88e39', CAST(N'2019-03-14T14:13:35.243' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2441, 1488, N'2eb0ee7b-581f-43e7-bb6e-4b6a16f9b97b', CAST(N'2019-03-14T14:26:41.990' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2443, 1489, N'317b2587-7ef6-44c5-9af2-c1b15f7147b7', CAST(N'2019-03-14T14:32:55.650' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2445, 1487, N'2c6d9224-7956-40be-8c85-01eb1593ac54', CAST(N'2019-03-14T14:36:53.497' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2446, 1490, N'72bb0474-5953-4546-89e4-2feb964e99e4', CAST(N'2019-03-14T14:37:55.367' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2450, 1492, N'b515e44c-ffa7-4e5c-9454-a78c00bd568b', CAST(N'2019-03-14T14:40:01.553' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2451, 1493, N'5dce19a7-11b1-46cc-9c59-6dbaa6e612e6', CAST(N'2019-03-14T15:02:56.177' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2458, 1462, N'e02cea85-5013-4e53-b410-272c59b86e21', CAST(N'2019-03-14T15:08:02.140' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2727, 1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', CAST(N'2019-03-14T15:50:59.290' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2728, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', CAST(N'2019-03-14T15:52:02.317' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2729, 1494, N'009f8c16-9f85-4f22-bdc6-2066a8ebed19', CAST(N'2019-03-14T16:08:56.073' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2730, 1487, N'8482ddb4-af9f-48ac-af01-3a796f8e7311', CAST(N'2019-03-19T07:31:08.063' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2731, 1487, N'e67934a5-be66-48f4-bb08-0fdcc08b9cb7', CAST(N'2019-03-19T07:31:26.243' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2732, 1496, N'85549e1f-a056-427a-8f9c-4b0eaadfc6de', CAST(N'2019-03-19T07:33:52.360' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2733, 1496, N'7fd809c8-e12e-4031-b5c6-69cc318ee142', CAST(N'2019-03-19T07:34:34.550' AS DateTime))
INSERT [dbo].[cmsContentVersion] ([id], [ContentId], [VersionId], [VersionDate]) VALUES (2734, 1494, N'38a3c649-f062-4527-852d-cd0f88412071', CAST(N'2019-03-19T07:34:34.923' AS DateTime))
SET IDENTITY_INSERT [dbo].[cmsContentVersion] OFF
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1143, N'<welkom id="1143" key="96393366-e870-4e62-a313-74b0c664d32e" parentID="-1" level="1" creatorID="0" sortOrder="1" createDate="2018-04-06T15:17:49" updateDate="2019-03-14T15:43:45" nodeName="NLapp Default" urlName="nlapp-default" path="-1,1143" isDoc="" nodeType="1142" creatorName="Demo User" writerName="Demo User" writerID="1" template="1139" nodeTypeAlias="welkom" isPublished="true"><sitename><![CDATA[NLapp]]></sitename><voorwaarden><![CDATA[{"values":{"en-US":"[{\"key\":\"0d6a3153-d227-4b19-86cf-4f0fa053335c\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"We use cookies to store your settings and to improve the app.\",\"disclaimer\":\"All data used is anonymous. We will not track you in any way.\"}]","nl-NL":"[{\"key\":\"baa85582-b49c-40ff-882e-5c35e87b6f30\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"Wij gebruiken cookies om uw voorkeuren vast te leggen en voor het verbeteren van de app.\",\"disclaimer\":\"Alle gegeven zijn anoniem. Wij gebruiken geen data die kunnen worden gebruikt om u te herleiden.\"}]","ar-SY":"[{\"key\":\"4b4e1063-ac0a-4f59-83d8-e28aef6d9834\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"نستخدم ملفات تعريف الارتباط لتخزين إعداداتك ولتحسين التطبيق.\",\"disclaimer\":\"جميع البيانات المستخدمة مجهولة. لن نتتبعك بأي طريقة.\"}]","ti-ER":"[{\"key\":\"20c95948-13e3-4631-8b27-77df656005dd\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"ነዚ ኣፕሊከሽን ንምምሕያሽን ናትኩም ሰቲን ንምቕማጥን ኩኪስ ንጥቀም\",\"disclaimer\":\"ኣብ ጥቕሚ ዝውዓለ ዳታ ኹሉ ስሙ ዘይፍለጥ እዩ \\nብዝኾነ መንገዲ ኣይንከታተለኩምን\"}]"},"dtdGuid":"e0d97c5e-fa53-4dfa-aadc-5ca982ec2ea8"}]]></voorwaarden></welkom>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1145, N'<Folder id="1145" key="c756de3c-470d-4c28-8cb9-467189e7a403" parentID="-1" level="1" creatorID="0" sortOrder="3" createDate="2018-04-06T16:51:59" updateDate="2018-05-01T16:03:31" nodeName="Media" urlName="media" path="-1,1145" isDoc="" nodeType="1031" writerName="Demo User" writerID="0" version="bcf72512-bf16-4aeb-aec2-aef219e95e8e" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1356, N'<Folder id="1356" key="c47d5efc-e4b0-4a9c-8a0d-f4c02f431f91" parentID="1145" level="2" creatorID="0" sortOrder="2" createDate="2018-05-01T16:03:11" updateDate="2018-05-01T16:03:11" nodeName="NL" urlName="nl" path="-1,1145,1356" isDoc="" nodeType="1031" writerName="Demo User" writerID="0" version="ed9ef2e6-38d9-411f-8d77-7984347936bc" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1357, N'<Folder id="1357" key="35a42b71-a275-422c-a6f5-9b4ecdc5ddb8" parentID="1356" level="3" creatorID="0" sortOrder="0" createDate="2018-05-01T16:03:57" updateDate="2018-06-25T09:53:34" nodeName="Afbeeldingen" urlName="afbeeldingen" path="-1,1145,1356,1357" isDoc="" nodeType="1031" writerName="Demo User" writerID="0" version="1ad01729-7d23-433b-9080-283a0fe18e74" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1358, N'<Folder id="1358" key="d9070190-66cc-4150-a069-6a6d1c92f39a" parentID="1356" level="3" creatorID="0" sortOrder="1" createDate="2018-05-01T16:04:17" updateDate="2018-06-25T09:54:00" nodeName="Videos" urlName="videos" path="-1,1145,1356,1358" isDoc="" nodeType="1031" writerName="Demo User" writerID="0" version="6c0f3e3c-9c81-43ca-a641-bfc8fd39ca24" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1462, N'<html_404 id="1462" key="729e8f5c-341f-4bc3-aad8-b268b20192e4" parentID="1143" level="2" creatorID="0" sortOrder="8" createDate="2018-11-08T15:38:57" updateDate="2019-03-14T15:08:02" nodeName="Html 404" urlName="html-404" path="-1,1143,1462" isDoc="" nodeType="1413" creatorName="Demo User" writerName="Demo User" writerID="1" template="1411" nodeTypeAlias="html_404" isPublished="true"><vorto_InfoPaginaContent><![CDATA[{"values":{"en-US":"[{\"key\":\"ae371390-0e3a-4bf7-9053-d1ce3972faf9\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Page not found\",\"Omschrijving\":\"<p>The page you are looking for is not available anymore.</p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"ba340069-3386-448a-bdfd-d25d813d8197\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Pagina niet gevonden\",\"Omschrijving\":\"<p>De pagina die u zoekt bestaat niet meer.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"86ee257a-46fd-4650-b7a1-86c01e7a2ee4\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"لم يتم العثور على الصفحة\",\"Omschrijving\":\"<p>الصفحة التي تبحث عنها لم تعد متوفرة بعد الآن.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"5d1c5c15-bc98-429a-ba36-d2927163feb0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"ገጽ ኣይተረኸበን \",\"Omschrijving\":\"<p>እትደልዮ ዘለኻ ገጽ ሕጂ ኣይርከብን</p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}]]></vorto_InfoPaginaContent></html_404>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1481, N'<home id="1481" key="43855a93-76ad-4b6d-b374-7ded42e98979" parentID="1143" level="2" creatorID="1" sortOrder="6" createDate="2019-03-14T14:10:51" updateDate="2019-03-14T15:52:02" nodeName="Gemeente" urlName="gemeente" path="-1,1143,1481" isDoc="" nodeType="1141" creatorName="Demo User" writerName="Demo User" writerID="1" template="1140" nodeTypeAlias="home" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><splashLocatieY>30</splashLocatieY><splashLocatieX>45</splashLocatieX><logo><![CDATA[umb://media/2fa55671f5b2439bbfad4207e0d1eaaf]]></logo><sitename><![CDATA[Gemeente]]></sitename><vorto_GemeenteNaam><![CDATA[{"values":{"en-US":"Gemeente"},"dtdGuid":"4d35d42d-8671-492a-8ab5-12779429cbac"}]]></vorto_GemeenteNaam></home>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1482, N'<Folder id="1482" key="a26fa161-ad0b-4b24-ab8d-237e771880a7" parentID="1145" level="2" creatorID="1" sortOrder="3" createDate="2019-03-14T14:12:36" updateDate="2019-03-14T14:12:36" nodeName="Gemeente" urlName="gemeente" path="-1,1145,1482" isDoc="" nodeType="1031" writerName="Demo User" writerID="1" version="ee9f5ee3-0da2-4d60-9910-ed50d83a139d" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1484, N'<Folder id="1484" key="8ace5fed-1bae-4843-9c3b-97ad207dde78" parentID="1482" level="3" creatorID="1" sortOrder="1" createDate="2019-03-14T14:13:21" updateDate="2019-03-14T14:13:21" nodeName="Afbeeldingen" urlName="afbeeldingen" path="-1,1145,1482,1484" isDoc="" nodeType="1031" writerName="Demo User" writerID="1" version="7c698dc1-574d-4584-92ec-d74dc7e7970a" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1485, N'<Folder id="1485" key="b6cc4ca2-4560-4d3b-b6cc-a65e5ea8bcf5" parentID="1482" level="3" creatorID="1" sortOrder="2" createDate="2019-03-14T14:13:35" updateDate="2019-03-14T14:13:35" nodeName="Videos" urlName="videos" path="-1,1145,1482,1485" isDoc="" nodeType="1031" writerName="Demo User" writerID="1" version="a0b03d76-864a-4b8d-bfb8-7004fae88e39" template="0" nodeTypeAlias="Folder" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1487, N'<categorie id="1487" key="c3c412f0-0fb6-4e89-badc-0547c0f80f21" parentID="1481" level="3" creatorID="1" sortOrder="0" createDate="2019-03-14T14:17:45" updateDate="2019-03-19T07:31:26" nodeName="cat-1" urlName="cat-1" path="-1,1143,1481,1487" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Category One\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Een\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1488, N'<onderwerp id="1488" key="448bb71b-6f5b-42ca-981c-60ef4823ddfa" parentID="1487" level="4" creatorID="1" sortOrder="0" createDate="2019-03-14T14:20:17" updateDate="2019-03-14T14:26:41" nodeName="onderwerp-1" urlName="onderwerp-1" path="-1,1143,1481,1487,1488" isDoc="" nodeType="1153" creatorName="Demo User" writerName="Demo User" writerID="1" template="1347" nodeTypeAlias="onderwerp" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><Vorto_OnderwerpContent><![CDATA[{"values":{"en-US":"[{\"key\":\"ce57dc30-185c-45dc-8f29-4044bfa10147\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"SubjectOne\",\"omschrijving\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc.</p>\"}]","nl-NL":"[{\"key\":\"d50977fb-420d-428c-8f6b-cadf0ab26856\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"OnderwerpEen\",\"omschrijving\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc.</p>\"}]","ar-SY":"[{\"key\":\"b6038fa7-a6c7-4491-98bb-62dab366bb12\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"موضوع واحد\",\"omschrijving\":\"<p>أبجد هوز دولور الجلوس امات، إيليت consectetur adipiscing، tempor الحوار الاقتصادي الاستراتيجي والحيوية، بحيث تعبا وحزنا، وبعض الأشياء الهامة التي يجب القيام eiusmod. المستهلك أو اللاعبين باستثناء رقائق الشوكولاته التسرب. Ultricies الأسد صحيح الآن.</p>\"}]","ti-ER":"[{\"key\":\"35b84148-df66-4e0b-b33d-32ba40c22d91\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"ኣርእስቲ ጉዳይ ሓደ\",\"omschrijving\":\"<p><span>ግዜያዊ ስሩዕ ጽሑፍ</span></p>\"}]"},"dtdGuid":"97578f6d-c2be-4a4c-a773-9388e65baa9d"}]]></Vorto_OnderwerpContent></onderwerp>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1489, N'<infoPagina id="1489" key="d28202e7-997c-42a1-8508-183369d5e4e4" parentID="1488" level="5" creatorID="1" sortOrder="0" createDate="2019-03-14T14:21:12" updateDate="2019-03-14T14:32:55" nodeName="informatiepagina-1" urlName="informatiepagina-1" path="-1,1143,1481,1487,1488,1489" isDoc="" nodeType="1158" creatorName="Demo User" writerName="Demo User" writerID="1" template="1157" nodeTypeAlias="infoPagina" isPublished="true"><umbracoNavihide>0</umbracoNavihide><vorto_InfoPaginaContent><![CDATA[{"values":{"en-US":"[{\"key\":\"1f6c226e-d030-47b5-9402-5af102c399c5\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"InfoPaginaOne\",\"Omschrijving\":\"<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong> Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc. Fames ac turpis egestas sed. Felis bibendum ut tristique et egestas quis. Sed blandit libero volutpat sed cras ornare arcu dui vivamus. Ut morbi tincidunt augue interdum. Augue interdum velit euismod in pellentesque massa placerat duis ultricies. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Enim lobortis scelerisque fermentum dui faucibus in ornare. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Et tortor at risus viverra adipiscing at in tellus. In dictum non consectetur a erat nam at. Egestas dui id ornare arcu odio. In pellentesque massa placerat duis ultricies lacus sed turpis. Aliquet sagittis id consectetur purus ut faucibus pulvinar. Egestas pretium aenean pharetra magna ac placerat.</p>\\n<p>Ornare quam viverra orci sagittis. Ac felis donec et odio pellentesque diam volutpat commodo sed. Egestas sed tempus urna et. Mauris cursus mattis molestie a iaculis at erat pellentesque. Sit amet nisl purus in mollis nunc. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Velit ut tortor pretium viverra suspendisse potenti. Aliquam id diam maecenas ultricies mi eget. Dictum varius duis at consectetur lorem donec. Est ultricies integer quis auctor elit sed vulputate mi sit. Diam maecenas ultricies mi eget mauris. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Tellus cras adipiscing enim eu turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Porta lorem mollis aliquam ut porttitor leo a diam. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Auctor eu augue ut lectus arcu bibendum at varius. Turpis cursus in hac habitasse platea dictumst quisque.</p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"c6b516fe-4594-47fa-aec4-327396133242\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"InfoPaginaEen\",\"Omschrijving\":\"<p><strong>Volutpat odio facilisis mauris sit amet massa vitae. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Mauris augue neque gravida in fermentum et sollicitudin. Urna neque viverra justo nec ultrices dui. Consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. A lacus vestibulum sed arcu non odio euismod lacinia. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nec tincidunt praesent semper feugiat nibh. Nisl condimentum id venenatis a condimentum vitae sapien. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque.</strong> Leo integer malesuada nunc vel risus commodo viverra maecenas. In nibh mauris cursus mattis molestie a iaculis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam. Ac turpis egestas sed tempus urna et pharetra. Vitae purus faucibus ornare suspendisse sed nisi.</p>\\n<p>Sed enim ut sem viverra aliquet eget. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Posuere ac ut consequat semper viverra nam libero justo laoreet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Aliquam sem fringilla ut morbi tincidunt augue interdum. Enim diam vulputate ut pharetra sit. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Dui nunc mattis enim ut tellus elementum. Vitae nunc sed velit dignissim. Purus sit amet luctus venenatis lectus magna fringilla. Tellus mauris a diam maecenas. Velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Mattis molestie a iaculis at erat pellentesque adipiscing. Tempus egestas sed sed risus pretium. Amet mattis vulputate enim nulla aliquet porttitor lacus. Consectetur a erat nam at. Augue mauris augue neque gravida in fermentum et sollicitudin ac.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"c4417cb0-ba63-4fbf-91aa-7707a6c628eb\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"معلومات الصفحة واحد\",\"Omschrijving\":\"<p><strong>أبجد هوز دولور الجلوس امات، إيليت consectetur adipiscing، tempor الحوار الاقتصادي الاستراتيجي والحيوية، بحيث تعبا وحزنا، وبعض الأشياء الهامة التي يجب القيام eiusmod. المستهلك أو اللاعبين باستثناء رقائق الشوكولاته التسرب. Ultricies الأسد صحيح الآن. لكن egestas جوع ميلان turpis. أوقع حزينة وتريد أن تشرب منه. ولكن الجلوس في نهاية الأسبوع لكرة القدم الحرة، ولكن غدا قوس وثيقة الهوية الوحيدة. من أجل موقع بروتين رابط الدعاية. الدعاية أداء يريد بعض الأحيان للاستثمار الشامل الفصول الدراسية التغذية المدرسية. حتى فترة طويلة السريرية كرة القدم الكرتون عنصر الأرض ا</strong>لتلفزيون nibh الآن. الكرتون دوي الشوكولاته الكمبيوتر الدافئ الحلق. ولا بعض الأفلام إطلاق النار إلا بعد أن دفعت vulputate سابين malesuada bibendum arcu. ليس ذلك volutpat lacus laoreet iaculis URNA Curabitur حامل؛ حبلى. درجة الحرارة في ابتسامة سحب الجامعية في المنطقة. في الأساس لم يكن ذلك لفي. Egestas وثيقة الهوية الوحيدة في معرف أورسي arcu أوديو. واجباتها الاطفال ultricies أصحاب المشاريع العقارية الجماعية والقبيح. مثل رقم الحلق aliquet شحم consectetur بوروس sagittis. تريد كبيرة لإرضاء، وسعر Aenean pharetra.</p>\\n<p>يوافق على سحب اطلاق النار السريري. وعلى الزناد حتى قطر نهاية الأسبوع يكرهون التغذية والراحة. تريد ولكن الوقت وعاء. استهدفت تشغيل أكبر موظف العقارات في الاطفال. وهناك الكثير من اللاعبين الفلفل الحار في لينة الآن. صاحب مكان حامل المطور الحراري للكرة الطائرة كرة القدم للأطفال المقيمين. تحتاج إلى الكثير من وصفات الفلفل الحار طعم الآن بحاجة الكرتون. درجة الحرارة في الهواء الطلق لسحب السعر من الهواتف الذكية. تحتاج أحدث ultricies Maecenas بقطر. وقد تباينت أبجد حتى الطماطم إلى التزلج على الجليد. ومن ultricies عدد صحيح من هو المطور ولكن لي Vulputate هو. في حاجة إلى بدء القطر Maecenas ultricies. صاحب مكان حامل سكان الكرة الطائرة الحرارية التغذية. غدا الأرض لكرة القدم الجامعية الفقر القبيح. عمر حزين العمر والمرض والمقيمين التغذية netus آخرون malesuada الجوع. ولا بعض الأفلام إطلاق النار إلا بعد أن دفعت vulputate سابين malesuada bibendum arcu. أبجد بوابة الناعمة كمنصة للأسد مبتكرة. المطورين كتلة التمويل الآن كرة الطائرة سابين هوز ولا عقوبة. الدعاية منافسات كرة القدم تخرج قوس للشرب ومتنوعة. أبجد هوز دولور الجلوس adipiscing إيليت turpis، في سياق كل واحد.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"0d4f53c3-6ddc-4c6c-97d6-80c3d09a6fc7\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"ሓበሬታ ገጽ ሓደ\",\"Omschrijving\":\"<p><span><strong>እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉ እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ</strong> ቋንቋታት ትርጉም ዘይብሉ እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉእዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉእዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉ</span></p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}]]></vorto_InfoPaginaContent></infoPagina>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1490, N'<categorie id="1490" key="df6e8ce4-5eca-4643-9fd0-0ee7b7a5c107" parentID="1481" level="3" creatorID="1" sortOrder="1" createDate="2019-03-14T14:35:44" updateDate="2019-03-14T14:37:55" nodeName="cat-2" urlName="cat-2" path="-1,1143,1481,1490" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"ae7958e7-66a3-454e-881f-fd6d62eaa312\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Category Two\"}]","nl-NL":"[{\"key\":\"7d55cd06-d7dc-4cb7-b77d-e62a0d53361a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Twee\"}]","ar-SY":"[{\"key\":\"94b1c2b5-7878-469b-ba2a-7233eb80adde\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الثانية\"}]","ti-ER":"[{\"key\":\"ae93d1eb-3623-4d2f-b688-e5bf680434a4\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ክልተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1492, N'<contentHolder id="1492" key="ec77487d-3d09-4d65-b961-b5d58dcf20c9" parentID="1143" level="2" creatorID="1" sortOrder="7" createDate="2019-03-14T14:40:01" updateDate="2019-03-14T14:40:01" nodeName="Gedeelde Inhoud" urlName="gedeelde-inhoud" path="-1,1143,1492" isDoc="" nodeType="1321" creatorName="Demo User" writerName="Demo User" writerID="1" template="0" nodeTypeAlias="contentHolder" isPublished="true" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1493, N'<infoPaginaNL id="1493" key="bdb57679-ee8e-4254-a18c-45812e67d444" parentID="1492" level="3" creatorID="1" sortOrder="0" createDate="2019-03-14T14:46:03" updateDate="2019-03-14T15:02:56" nodeName="GedeeldeInfoPagina-1" urlName="gedeeldeinfopagina-1" path="-1,1143,1492,1493" isDoc="" nodeType="1335" creatorName="Demo User" writerName="Demo User" writerID="1" template="1336" nodeTypeAlias="infoPaginaNL" isPublished="true"><umbracoNavihide>0</umbracoNavihide><vorto_InfoPaginaContent><![CDATA[{"values":{"en-US":"[{\"key\":\"edc363df-764d-4e4b-8881-4a702d320a2d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Shared information page One\",\"Omschrijving\":\"<p><span><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis imperdiet proin fermentum leo vel. Auctor augue mauris augue neque. Dis parturient montes nascetur ridiculus.</strong> Leo in vitae turpis massa. Non tellus orci ac auctor. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Velit scelerisque in dictum non consectetur a. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Habitant morbi tristique senectus et netus et malesuada fames. At quis risus sed vulputate odio ut enim blandit. Vulputate sapien nec sagittis aliquam malesuada bibendum. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Tortor pretium viverra suspendisse potenti nullam. Iaculis eu non diam phasellus vestibulum. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Enim blandit volutpat maecenas volutpat blandit aliquam etiam. Congue quisque egestas diam in. Consequat semper viverra nam libero justo laoreet sit.</span></p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"9b71a416-e90e-477d-b733-9fb0a621cf1e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Gedeelde informatie pagina Een\",\"Omschrijving\":\"<p><strong>Volutpat odio facilisis mauris sit amet massa vitae. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Mauris augue neque gravida in fermentum et sollicitudin.</strong> Urna neque viverra justo nec ultrices dui. Consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. A lacus vestibulum sed arcu non odio euismod lacinia. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nec tincidunt praesent semper feugiat nibh. Nisl condimentum id venenatis a condimentum vitae sapien. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. Leo integer malesuada nunc vel risus commodo viverra maecenas. In nibh mauris cursus mattis molestie a iaculis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam. Ac turpis egestas sed tempus urna et pharetra. Vitae purus faucibus ornare suspendisse sed nisi.</p>\\n<p>Sed enim ut sem viverra aliquet eget. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Posuere ac ut consequat semper viverra nam libero justo laoreet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Aliquam sem fringilla ut morbi tincidunt augue interdum. Enim diam vulputate ut pharetra sit. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Dui nunc mattis enim ut tellus elementum. Vitae nunc sed velit dignissim. Purus sit amet luctus venenatis lectus magna fringilla. Tellus mauris a diam maecenas. Velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Mattis molestie a iaculis at erat pellentesque adipiscing. Tempus egestas sed sed risus pretium. Amet mattis vulputate enim nulla aliquet porttitor lacus. Consectetur a erat nam at. Augue mauris augue neque gravida in fermentum et sollicitudin ac.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"dd2541bb-7de7-4584-a144-aa2f262a46b8\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"المعلومات المشتركة صفحة واحدة\",\"Omschrijving\":\"<p>Volutpat أوديو الجلوس امات ماسا facilisis mauris الحياة. كرة القدم هي قطر لكرة القدم صناعة القوارب أبجد الضحك الفصول الدراسية. ، وفي الاحماء، أو كونها حاملا mauris augue interdum sollicitudin السابق. غير المصنفة في موضع ultrices viverra خوستو URNA neque وثيقة الهوية الوحيدة. الفلفل الحار الطماطم وسادة الرقبة. Luctus venenatis بوروس الجلوس امات consectetur adipiscing إيليت قد يكون لها بعض الخيارات. من حمام السباحة لكني لا أكره الأداء القوس تنورة. مؤسس كرة السلة وكرة القدم الدعاية تخرج شراب في القوس. وستنجهاوس صلصة الفول السوداني أو حتى الوقت درجة الحرارة والكراهية. غير المصنفة في موضع tincidunt feugiat nibh هو الحاضر دائما. Nisl condimentum معرف سابين venenatis توابل الحياة. جواز سفر Mauris الياسمين البرتقال أو المطور الحراري حامل مكان حامل. أسد عدد صحيح أو ابتسامة الآن يرجى سحب Maecenas. التلفزيون nibh تشغيل الكثير من السكر. الإجهاد الحلق وضعت في بعض الأحيان الجزر أبجد هوز. الجزر الراحة ولا عقوبة. ولكن لا أحد تخرج قطر نهاية الأسبوع من أي وقت مضى. ولكن تطبيق القانون والوقت القبيح للوعاء وجعبة. الفلفل الحار طعم كرة القدم وليس مع وقف التنفيذ.</p>\\n<p>ولكننا نحتاج الموز كما رسم كاريكاتوري التلفزيون. الضحك من بين فكي جدا من aliquet الحياة غير المصنفة في موضع ullamcorper الجلوس امات ميل. ووضع التصوير حرة دائما سحب للتكنولوجيا. ولكن الاستفسار URNA غير المصنفة في موضع tincidunt feugiat nibh شحم دائما موجودة. A سلطة البيئي موقع تصل إلى البروتين الدعاية. Consectetuer بقطر جعبة هي. المنطقة Vulputate خوفا من الغازات السامة تصفيفة الشعر لكرة القدم الحرارية. دوي متحركة الآن للعنصر إلى المنطقة. الحياة، ولكن يريد الآن الأصول. A نقية الجلوس امات luctus venenatis LECTUS ماجنا fringilla. تيلوس mauris منصة Maecenas. في الهواء الطلق لكرة القدم وكرة القدم الاعضاء. هوز دولور الجلوس امات، consectetur adipiscing إيليت. سابين الاتحاد الأوروبي ولكن كتلة في الحلق والتلفزيون والركاب تخرج. سعر فيل أو مستويات الأسعار أن اللاعبين صفة تخرج. وهناك الكثير من التلفزيون تستهدف التغذية الجامعية. ولكن الوقت لتطبيق القانون ولكن بثمن من الضحك. امات ماتيس vulputate ENIM ولا عقوبة aliquet porttitor lacus. ولكن هناك الطماطم. Augue mauris augue sollicitudin التيار المتردد، أو كونها حاملا، وفي الاحماء.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"9b334871-198d-4bab-a337-b94bffb1251f\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"gedeelde ሓበሬታ ገጽ ሓደ\",\"Omschrijving\":\"<p><span>ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. </span></p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}]]></vorto_InfoPaginaContent></infoPaginaNL>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1494, N'<search id="1494" key="442ff154-207c-4c4e-b54f-865846c5fdbb" parentID="1481" level="3" creatorID="1" sortOrder="3" createDate="2019-03-14T15:05:53" updateDate="2019-03-19T07:34:34" nodeName="search" urlName="search" path="-1,1143,1481,1494" isDoc="" nodeType="1349" creatorName="Demo User" writerName="Demo User" writerID="0" template="1392" nodeTypeAlias="search" isPublished="true" />')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1495, N'<Image id="1495" key="2fa55671-f5b2-439b-bfad-4207e0d1eaaf" parentID="1484" level="4" creatorID="1" sortOrder="0" createDate="2019-03-14T15:50:59" updateDate="2019-03-14T15:50:59" nodeName="LoremIpsumImagePlaceholder.png" urlName="loremipsumimageplaceholderpng" path="-1,1145,1482,1484,1495" isDoc="" nodeType="1032" writerName="Demo User" writerID="1" version="00304d01-e0d9-4d94-b2c0-3145caa5231b" template="0" nodeTypeAlias="Image"><umbracoFile><![CDATA[{"src": "/media/1004/loremipsumimageplaceholder.png", "crops": []}]]></umbracoFile><umbracoWidth><![CDATA[425]]></umbracoWidth><umbracoHeight><![CDATA[352]]></umbracoHeight><umbracoBytes><![CDATA[17086]]></umbracoBytes><umbracoExtension><![CDATA[png]]></umbracoExtension></Image>')
INSERT [dbo].[cmsContentXml] ([nodeId], [xml]) VALUES (1496, N'<categorie id="1496" key="f36ffde8-3804-49e4-a288-0aae6a37fccc" parentID="1481" level="3" creatorID="1" sortOrder="2" createDate="2019-03-19T07:33:52" updateDate="2019-03-19T07:34:34" nodeName="cat-3" urlName="cat-3" path="-1,1143,1481,1496" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="0" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"4adec9fd-af75-4c2f-91c0-469b7c3be80a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Three\"}]","nl-NL":"[{\"key\":\"e02c24e1-ccbc-4d8d-915c-7365b46f5732\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Drie\"}]","ar-SY":"[{\"key\":\"cad80f14-64c3-4ec5-989a-cedd3ac6ee05\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"القط ثلاثة\"}]","ti-ER":"[{\"key\":\"957a961d-c065-43cf-91c2-7bfb9324c77e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ሰለስተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
SET IDENTITY_INSERT [dbo].[cmsDataType] ON 

INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-28, -97, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-27, -96, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (-26, -95, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (1, -49, N'Umbraco.TrueFalse', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (2, -51, N'Umbraco.Integer', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (3, -87, N'Umbraco.TinyMCEv3', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (4, -88, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (5, -89, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (6, -90, N'Umbraco.UploadField', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (7, -92, N'Umbraco.NoEdit', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (8, -36, N'Umbraco.DateTime', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (9, -37, N'Umbraco.ColorPickerAlias', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (11, -39, N'Umbraco.DropDownMultiple', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (12, -40, N'Umbraco.RadioButtonList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (13, -41, N'Umbraco.Date', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (14, -42, N'Umbraco.DropDown', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (15, -43, N'Umbraco.CheckBoxList', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (22, 1041, N'Umbraco.Tags', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (24, 1043, N'Umbraco.ImageCropper', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (26, 1046, N'Umbraco.ContentPicker2', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (27, 1047, N'Umbraco.MemberPicker2', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (28, 1048, N'Umbraco.MediaPicker2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (29, 1049, N'Umbraco.MediaPicker2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (30, 1050, N'Umbraco.RelatedLinks2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (49, 1079, N'Umbraco.ListView', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (51, 1136, N'Umbraco.UploadField', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (52, 1154, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (53, 1155, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (54, 1156, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (55, 1162, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (56, 1166, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (57, 1167, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (58, 1168, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (60, 1171, N'Umbraco.NestedContent', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (61, 1172, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (62, 1174, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (63, 1175, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (64, 1176, N'Umbraco.NestedContent', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (65, 1177, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (66, 1180, N'Umbraco.NestedContent', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (67, 1181, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (68, 1182, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (69, 1183, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (70, 1184, N'Umbraco.TinyMCEv3', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (71, 1187, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (74, 1191, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (75, 1192, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (76, 1193, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (77, 1194, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (78, 1195, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (79, 1197, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (80, 1198, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (81, 1205, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (83, 1241, N'Umbraco.MultiNodeTreePicker2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (84, 1318, N'Umbraco.MultiNodeTreePicker2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (85, 1330, N'Umbraco.MultiNodeTreePicker2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (86, 1342, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (87, 1345, N'Umbraco.ColorPickerAlias', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (88, 1352, N'Umbraco.TinyMCEv3', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (91, 1361, N'NLapp.ExternalLinksEditor', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (94, 1364, N'NLapp.ExternalLinksEditor', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (95, 1366, N'Umbraco.Integer', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (96, 1367, N'Umbraco.Integer', N'Integer')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (97, 1370, N'Umbraco.Date', N'Date')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (98, 1373, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (99, 1379, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (100, 1380, N'Umbraco.TextboxMultiple', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (101, 1382, N'Umbraco.NestedContent', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (102, 1383, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (103, 1395, N'Umbraco.MediaPicker2', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (105, 1402, N'NLapp.ExternalLinksEditor', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (106, 1404, N'Our.Umbraco.Vorto', N'Ntext')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (107, 1406, N'NLapp.MapLinksEditor', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (108, 1407, N'NLapp.MapLinksEditor', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (109, 1408, N'NLapp.MapLinksEditor', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (110, 1415, N'Umbraco.Textbox', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (111, 1437, N'Umbraco.NoEdit', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (112, 1438, N'Umbraco.DropDown.Flexible', N'Nvarchar')
INSERT [dbo].[cmsDataType] ([pk], [nodeId], [propertyEditorAlias], [dbType]) VALUES (113, 1439, N'Umbraco.Textbox', N'Nvarchar')
SET IDENTITY_INSERT [dbo].[cmsDataType] OFF
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] ON 

INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-9, -96, N'[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]', 5, N'includeProperties')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-8, -96, N'[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}]', 4, N'layouts')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-7, -96, N'desc', 3, N'orderDirection')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-6, -96, N'updateDate', 2, N'orderBy')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-5, -96, N'100', 1, N'pageSize')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-4, -97, N'[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]', 4, N'includeProperties')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-3, -97, N'asc', 3, N'orderDirection')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-2, -97, N'username', 2, N'orderBy')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (-1, -97, N'10', 1, N'pageSize')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (4, 1041, N'default', 0, N'group')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (6, 1049, N'1', 0, N'multiPicker')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (79, 1079, N'1', 1, N'displayAtTabNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (80, 1079, N'10', 2, N'pageSize')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (81, 1079, N'[
  {
    "name": "Grid",
    "path": "views/propertyeditors/listview/layouts/grid/grid.html",
    "icon": "icon-thumbnails-small",
    "isSystem": 1,
    "selected": true
  },
  {
    "name": "List",
    "path": "views/propertyeditors/listview/layouts/list/list.html",
    "icon": "icon-list",
    "isSystem": 1,
    "selected": true
  }
]', 3, N'layouts')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (82, 1079, N'[
  {
    "alias": "photos",
    "isSystem": 0,
    "header": "Photo"
  },
  {
    "alias": "updateDate",
    "header": "Last edited",
    "isSystem": 1
  },
  {
    "alias": "owner",
    "header": "Created by",
    "isSystem": 1
  }
]', 4, N'includeProperties')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (83, 1079, N'sortOrder', 5, N'orderBy')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (84, 1079, N'asc', 6, N'orderDirection')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (85, 1079, N'{
  "allowBulkPublish": true,
  "allowBulkUnpublish": true,
  "allowBulkCopy": true,
  "allowBulkMove": true,
  "allowBulkDelete": true
}', 7, N'bulkActionPermissions')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (87, 1154, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (88, 1155, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (91, 1156, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (92, 1162, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (94, 1167, N'{
  "guid": "2d6b4d9a-6db5-4031-a25f-2250bf5a6e52",
  "name": "InfoPagina - Textbox - Titel",
  "propertyEditorAlias": "Umbraco.Textbox"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (95, 1167, N'inuse', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (96, 1167, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (97, 1167, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (98, 1167, N'nl-NL', 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (99, 1167, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (100, 1167, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (101, 1167, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (102, 1167, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (103, 1168, N'{
  "guid": "f15265b7-4b93-4a89-85f4-757dff17015a",
  "name": "InfoPagina - Omschrijving - Textarea",
  "propertyEditorAlias": "Umbraco.TextboxMultiple"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (104, 1168, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (105, 1168, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (106, 1168, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (107, 1168, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (108, 1168, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (109, 1168, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (110, 1168, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (111, 1168, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (166, 1175, N'{
  "guid": "9e718155-08e1-4530-b3b3-13c5fe13e475",
  "name": "Onderwerp Content - Onderwerp naam - Textbox",
  "propertyEditorAlias": "Umbraco.Textbox"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (167, 1175, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (168, 1175, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (169, 1175, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (170, 1175, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (171, 1175, N'all', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (172, 1175, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (173, 1175, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (174, 1175, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (175, 1174, N'50', 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (176, 1172, N'{
  "guid": "9e718155-08e1-4530-b3b3-13c5fe13e475",
  "name": "Textbox_50",
  "propertyEditorAlias": "Umbraco.Textbox"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (177, 1172, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (178, 1172, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (179, 1172, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (180, 1172, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (181, 1172, N'all', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (182, 1172, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (183, 1172, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (184, 1172, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (197, 1177, N'{
  "guid": "44574f6f-53bf-4f20-88b0-6a58eecb0c8b",
  "name": "Nested_InfoPagina",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (198, 1177, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (199, 1177, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (200, 1177, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (201, 1177, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (202, 1177, N'all', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (203, 1177, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (204, 1177, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (205, 1177, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (263, 1182, N'{
  "guid": "95ab27ca-3772-4b61-9e91-2926c0848311",
  "name": "Nested_OnderwerpContent",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (264, 1182, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (265, 1182, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (266, 1182, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (267, 1182, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (268, 1182, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (269, 1182, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (270, 1182, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (271, 1182, N'1', 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (297, 1176, N'[
  {
    "ncAlias": "infoPaginaContent",
    "ncTabAlias": "Content",
    "nameTemplate": ""
  }
]', 1, N'contentTypes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (298, 1176, N'1', 2, N'minItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (299, 1176, N'1', 3, N'maxItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (300, 1176, N'1', 4, N'confirmDeletes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (301, 1176, N'1', 5, N'showIcons')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (302, 1176, N'1', 6, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (315, 1191, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (361, 1187, N'{
  "guid": "44574f6f-53bf-4f20-88b0-6a58eecb0c8b",
  "name": "Nested_InfoPagina",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (362, 1187, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (363, 1187, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (364, 1187, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (365, 1187, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (366, 1187, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (367, 1187, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (368, 1187, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (369, 1187, N'1', 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (370, 1183, N'{
  "guid": "95ab27ca-3772-4b61-9e91-2926c0848311",
  "name": "Nested_OnderwerpContent",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (371, 1183, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (372, 1183, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (373, 1183, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (374, 1183, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (375, 1183, N'ignore', 6, N'mandatoryBehaviour')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (376, 1183, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (377, 1183, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (378, 1183, N'1', 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (379, 1194, N'{
  "guid": "c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3",
  "name": "Textarea",
  "propertyEditorAlias": "Umbraco.TextboxMultiple"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (380, 1194, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (381, 1194, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (382, 1194, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (383, 1194, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (384, 1194, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (385, 1194, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (386, 1194, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (387, 1194, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (388, 1195, N'{
  "guid": "b6b73142-b9c1-4bf8-a16d-e1c23320b549",
  "name": "Tags",
  "propertyEditorAlias": "Umbraco.Tags"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (389, 1195, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (390, 1195, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (391, 1195, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (392, 1195, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (393, 1195, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (394, 1195, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (395, 1195, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (396, 1195, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (397, 1192, N'{
  "guid": "c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3",
  "name": "Textarea",
  "propertyEditorAlias": "Umbraco.TextboxMultiple"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (398, 1192, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (399, 1192, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (400, 1192, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (401, 1192, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (402, 1192, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (403, 1192, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (404, 1192, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (405, 1192, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (406, 1193, N'{
  "guid": "b6b73142-b9c1-4bf8-a16d-e1c23320b549",
  "name": "Tags",
  "propertyEditorAlias": "Umbraco.Tags"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (407, 1193, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (408, 1193, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (409, 1193, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (410, 1193, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (411, 1193, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (412, 1193, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (413, 1193, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (414, 1193, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (442, 1171, N'[
  {
    "ncAlias": "categoriecontent",
    "ncTabAlias": "Content",
    "nameTemplate": ""
  }
]', 1, N'contentTypes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (443, 1171, N'1', 2, N'minItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (444, 1171, N'1', 3, N'maxItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (445, 1171, N'1', 4, N'confirmDeletes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (446, 1171, N'1', 5, N'showIcons')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (447, 1171, N'1', 6, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (448, 1181, N'{
  "guid": "b796b5b8-7e4d-4919-935a-6ed2def9aa0b",
  "name": "Nested_CategorieContent",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (449, 1181, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (450, 1181, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (451, 1181, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (452, 1181, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (453, 1181, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (454, 1181, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (455, 1181, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (456, 1181, N'1', 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (457, 1205, N'{
  "guid": "b796b5b8-7e4d-4919-935a-6ed2def9aa0b",
  "name": "Nested_CategorieContent",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (458, 1205, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (459, 1205, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (460, 1205, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (461, 1205, N'nl-NL', 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (462, 1205, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (463, 1205, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (464, 1205, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (465, 1205, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (466, 1180, N'[
  {
    "ncAlias": "onderwerpContent",
    "ncTabAlias": "Content",
    "nameTemplate": ""
  }
]', 1, N'contentTypes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (467, 1180, N'1', 2, N'minItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (468, 1180, N'1', 3, N'maxItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (469, 1180, N'1', 4, N'confirmDeletes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (470, 1180, N'1', 5, N'showIcons')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (471, 1180, N'1', 6, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (494, 1050, NULL, 1, N'max')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (580, 1318, N'{
  "type": "content",
  "id": "umb://document/74ad2a46202e4ec8b8442126c8fd234a"
}', 1, N'startNode')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (581, 1318, N'InfoPaginaNL', 2, N'filter')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (582, 1318, NULL, 3, N'minNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (583, 1318, N'1', 4, N'maxNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (584, 1318, N'1', 5, N'showOpenButton')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (675, 1330, N'{
  "type": "content",
  "query": "$parent/.."
}', 1, N'startNode')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (676, 1330, N'InfoPagina', 2, N'filter')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (677, 1330, NULL, 3, N'minNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (678, 1330, N'1', 4, N'maxNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (679, 1330, N'1', 5, N'showOpenButton')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (680, 1342, N'{
  "guid": "9e718155-08e1-4530-b3b3-13c5fe13e475",
  "name": "Textbox_50",
  "propertyEditorAlias": "Umbraco.Textbox"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (681, 1342, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (682, 1342, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (683, 1342, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (684, 1342, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (685, 1342, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (686, 1342, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (687, 1342, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (688, 1342, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (689, 1345, N'0', 1, N'useLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (719, 1197, N'{
  "guid": "9e718155-08e1-4530-b3b3-13c5fe13e475",
  "name": "Textbox_50",
  "propertyEditorAlias": "Umbraco.Textbox"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (720, 1197, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (721, 1197, N'', 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (722, 1197, N'', 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (723, 1197, N'', 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (724, 1197, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (725, 1197, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (726, 1197, N'1', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (727, 1197, N'', 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (766, 1166, N'', 1, N'maxChars')
GO
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (810, 1352, N'{
  "toolbar": [
    "removeformat",
    "undo",
    "redo",
    "cut",
    "copy",
    "paste",
    "bullist",
    "numlist"
  ],
  "stylesheets": [],
  "dimensions": {
    "height": 500
  },
  "maxImageSize": 500
}', 1, N'editor')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (811, 1352, N'', 2, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (843, 1198, N'{
  "guid": "c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3",
  "name": "Textarea",
  "propertyEditorAlias": "Umbraco.TextboxMultiple"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (844, 1198, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (845, 1198, N'', 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (846, 1198, N'', 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (847, 1198, N'', 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (848, 1198, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (849, 1198, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (850, 1198, N'0', 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (851, 1198, N'', 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (852, 1366, N'0', 1, N'min')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (853, 1366, N'1', 2, N'step')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (854, 1366, N'100', 3, N'max')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (855, 1367, N'0', 1, N'min')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (856, 1367, N'1', 2, N'step')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (857, 1367, N'100', 3, N'max')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (858, 1370, N'YYYY-MM-DD', 1, N'format')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (859, 1373, N'10', 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1020, 1379, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1021, 1380, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1028, 1382, N'[
  {
    "ncAlias": "privacyContent",
    "ncTabAlias": "Privacy",
    "nameTemplate": ""
  }
]', 1, N'contentTypes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1029, 1382, N'1', 2, N'minItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1030, 1382, N'1', 3, N'maxItems')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1031, 1382, N'1', 4, N'confirmDeletes')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1032, 1382, N'1', 5, N'showIcons')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1033, 1382, NULL, 6, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1034, 1383, N'{
  "guid": "33be672d-758d-49b5-98b1-0b2fa282d133",
  "name": "Nested_PrivacyContent",
  "propertyEditorAlias": "Umbraco.NestedContent"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1035, 1383, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1036, 1383, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1037, 1383, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1038, 1383, NULL, 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1039, 1383, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1040, 1383, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1041, 1383, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1042, 1383, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1043, 1395, NULL, 1, N'multiPicker')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1044, 1395, N'0', 2, N'onlyImages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1045, 1395, NULL, 3, N'disableFolderSelect')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1046, 1395, N'', 4, N'startNodeId')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1049, 1402, N'1', 1, N'extlinksMax')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1050, 1404, N'{
  "guid": "9e718155-08e1-4530-b3b3-13c5fe13e475",
  "name": "Textbox_50",
  "propertyEditorAlias": "Umbraco.Textbox"
}', 1, N'dataType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1051, 1404, N'installed', 2, N'languageSource')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1052, 1404, NULL, 3, N'xpath')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1053, 1404, NULL, 4, N'displayNativeNames')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1054, 1404, N'nl-NL', 5, N'primaryLanguage')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1055, 1404, N'ignore', 6, N'mandatoryBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1056, 1404, N'ignore', 7, N'rtlBehaviour')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1057, 1404, NULL, 8, N'showFilledLanguages')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1058, 1404, NULL, 9, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1059, 1406, N'1', 1, N'maplinksMax')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1060, 1407, N'1', 1, N'maplinksMax')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1062, 1408, N'1', 1, N'maplinksMax')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1063, 1415, N'', 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1064, -87, N'{
  "toolbar": [
    "removeformat",
    "undo",
    "redo",
    "bullist",
    "numlist"
  ],
  "stylesheets": [],
  "dimensions": {
    "height": 500
  },
  "maxImageSize": 500
}', 1, N'editor')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1065, -87, N'', 2, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1068, 1437, N'STRING', 1, N'umbracoDataValueType')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1071, 1438, N'Demo externe bron', 1, N'0')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1081, 1439, NULL, 1, N'maxChars')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1083, 1184, N'{
  "toolbar": [
    "removeformat",
    "undo",
    "redo",
    "cut",
    "copy",
    "paste",
    "styleselect",
    "bold",
    "bullist",
    "numlist"
  ],
  "stylesheets": [
    "WYSIWYG_styles",
    "RTE_styles"
  ],
  "dimensions": {
    "height": 500
  },
  "maxImageSize": 500
}', 1, N'editor')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1084, 1184, N'', 2, N'hideLabel')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1090, 1241, N'{
  "type": "content",
  "query": "$parent/../.."
}', 1, N'startNode')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1091, 1241, N'InfoPagina,InfoPaginaNL,KaartPagina', 2, N'filter')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1092, 1241, N'0', 3, N'minNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1093, 1241, N'3', 4, N'maxNumber')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1094, 1241, N'0', 5, N'showOpenButton')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1097, 1361, N'3', 1, N'extlinksMax')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1098, 1364, N'3', 1, N'extlinksMax')
INSERT [dbo].[cmsDataTypePreValues] ([id], [datatypeNodeId], [value], [sortorder], [alias]) VALUES (1099, 1438, N'0', 2, N'multiple')
SET IDENTITY_INSERT [dbo].[cmsDataTypePreValues] OFF
SET IDENTITY_INSERT [dbo].[cmsDictionary] ON 

INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (6, N'73528610-1886-4481-93fd-c4ae117b3a60', NULL, N'Labels')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (7, N'e703dda2-b906-48da-9c6c-009301093904', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Gerelateerd')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (8, N'24077766-e50e-4d08-92a1-ec86325d2523', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Welkom')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (9, N'684b623d-fa1e-4540-85e9-d6c4648700f1', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Terug')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (10, N'4b13094a-7f08-45df-b4cb-6087db9b3ec7', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Zoeken')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (11, N'0883807c-b2ff-4e27-9ced-6c6cda9fe5b7', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Links')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (12, N'98607d43-411c-46fd-8af3-abe7e0cdbefe', NULL, N'System')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (13, N'5f0be56a-0142-4b3c-b55b-210585f02434', N'98607d43-411c-46fd-8af3-abe7e0cdbefe', N'Missende inhoud')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (14, N'49aa358d-9114-4c08-bc31-3b126d03952a', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Taal')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (15, N'd9b2e252-3db3-4a1a-842f-9dacc4ca41cb', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ShareLink')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (17, N'2ce9651c-1376-4313-953c-cf9377ab3898', N'98607d43-411c-46fd-8af3-abe7e0cdbefe', N'JavaScript-melding')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (18, N'aac3a3fe-c90a-4860-929b-245029d60cde', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ShareLinkCopied')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (19, N'746aa373-e32a-4e7a-9e43-d645cfd301fa', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Instellingen')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (20, N'236087fc-1790-4a38-9688-e1fd893ba04a', N'98607d43-411c-46fd-8af3-abe7e0cdbefe', N'NietsGevonden')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (22, N'936252e5-12c3-4961-a3fe-36f86e2898d2', N'73528610-1886-4481-93fd-c4ae117b3a60', N'SelecteerTaal')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (23, N'f8f2676e-8b4c-4791-becc-347534ceebee', N'73528610-1886-4481-93fd-c4ae117b3a60', N'SelecteerGemeente')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (24, N'86aaddd1-b6fa-4675-aa95-7fc4868c0b1b', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ActieveTaal')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (25, N'649994ee-828f-4f79-9438-269cc866e3f5', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ActieveGemeente')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (26, N'0ffb4af9-b3c4-46c1-a6bf-3a92f6af5b11', N'73528610-1886-4481-93fd-c4ae117b3a60', N'SluitenPopup')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (27, N'78fd9abb-f390-43f4-8add-43b2f72e9fff', N'73528610-1886-4481-93fd-c4ae117b3a60', N'InstellingenMenu')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (28, N'f797574e-c935-49b8-9988-25f3e447cac0', N'73528610-1886-4481-93fd-c4ae117b3a60', N'OpenCategorie')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (29, N'530e2332-bc8c-4495-93bf-2b696b17cb14', N'73528610-1886-4481-93fd-c4ae117b3a60', N'GaNaarPagina')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (30, N'351e3b50-ed77-415f-beac-897e19ad6849', N'73528610-1886-4481-93fd-c4ae117b3a60', N'OpenOnderwerp')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (32, N'389a2883-32d0-48eb-82c1-d3e5778c0816', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Categorie')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (34, N'df7a3b30-313d-4b15-8f10-f1adf2360a2f', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ZoekText')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (35, N'9e5f3e35-32ab-463f-9195-ac637a110ec3', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Hoofdstuk')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (37, N'38bc8bab-ff7e-442d-8773-7bf17f76e402', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ZoekenUitvoeren')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (38, N'59ae5fd2-b3f8-464c-8d8a-ee5acee1dc5e', N'73528610-1886-4481-93fd-c4ae117b3a60', N'Sluiten')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (39, N'd2eaeb4b-7624-4d95-bebe-8342f02f83b2', N'73528610-1886-4481-93fd-c4ae117b3a60', N'TerugNaarHome')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (40, N'cb98ad4e-a181-4182-94e7-ac2cd209d166', N'73528610-1886-4481-93fd-c4ae117b3a60', N'OpenPagina')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (41, N'f15dd10e-3d51-4a1d-be7e-9f595e526a5b', N'73528610-1886-4481-93fd-c4ae117b3a60', N'OpenWebsite')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (77, N'ca6d2556-c793-4d14-933a-1261e7c527b2', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ZoekResultaten')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (79, N'ea7e20e4-6dc3-45cb-8442-85d12a87e6f8', N'73528610-1886-4481-93fd-c4ae117b3a60', N'InstellingenHeader')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (101, N'bc13ad5c-cb47-4d69-aef8-3480efcd5346', N'73528610-1886-4481-93fd-c4ae117b3a60', N'GezochtOp')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (251, N'0c901ba9-c4b9-44af-b7e8-cf817f349437', N'73528610-1886-4481-93fd-c4ae117b3a60', N'DisclaimerAlertTitel')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (252, N'f61dc1dd-c265-4910-9d09-e54cb187054d', N'73528610-1886-4481-93fd-c4ae117b3a60', N'DisclaimerAlertLabel')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (253, N'247b6e70-a3bb-4165-83e0-f921d083c91e', N'73528610-1886-4481-93fd-c4ae117b3a60', N'DisclaimerAlertDisclaimer')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (254, N'213f757c-35b9-4c9e-acc6-6137220b5b51', N'73528610-1886-4481-93fd-c4ae117b3a60', N'DisclaimerAlertCookie')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (483, N'50092156-a906-46ab-8c8d-051fdd242789', N'73528610-1886-4481-93fd-c4ae117b3a60', N'InstallAppButton')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (527, N'97e4aebe-e53b-4241-82a8-a6aef7d90a73', N'73528610-1886-4481-93fd-c4ae117b3a60', N'PWAHeader')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (528, N'd190fe98-3ed8-4319-845b-9f85e89fe1df', N'73528610-1886-4481-93fd-c4ae117b3a60', N'PWAInstallActie')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (529, N'0544e97e-c465-4bbe-a536-bb6d15e6c329', N'73528610-1886-4481-93fd-c4ae117b3a60', N'PWAInstallButton')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (530, N'e96159b6-4786-4295-b95d-86763c500cde', N'73528610-1886-4481-93fd-c4ae117b3a60', N'PWAIsInstalled')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (533, N'197dbf4c-7138-4796-b4ff-98b8e8508f63', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ConnectionOffline')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (534, N'd82f01ae-de9a-46f2-b531-4ce7147d0475', N'73528610-1886-4481-93fd-c4ae117b3a60', N'ConnectionOnline')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (828, N'763f8f79-3757-4ebc-8212-c4824b5a3801', N'73528610-1886-4481-93fd-c4ae117b3a60', N'TerugNaarCategorie')
SET IDENTITY_INSERT [dbo].[cmsDictionary] OFF
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1487, 0, 0, N'2c6d9224-7956-40be-8c85-01eb1593ac54', N'cat-1', NULL, NULL, CAST(N'2019-03-14T14:36:53.497' AS DateTime), 1150, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1487, 1, 0, N'e67934a5-be66-48f4-bb08-0fdcc08b9cb7', N'cat-1', NULL, NULL, CAST(N'2019-03-19T07:31:26.243' AS DateTime), 1150, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1494, 0, 0, N'009f8c16-9f85-4f22-bdc6-2066a8ebed19', N'search', NULL, NULL, CAST(N'2019-03-14T16:08:56.073' AS DateTime), 1392, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1462, 1, 0, N'e02cea85-5013-4e53-b410-272c59b86e21', N'Html 404', NULL, NULL, CAST(N'2019-03-14T15:08:02.140' AS DateTime), 1411, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1490, 1, 0, N'72bb0474-5953-4546-89e4-2feb964e99e4', N'cat-2', NULL, NULL, CAST(N'2019-03-14T14:37:55.367' AS DateTime), 1150, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1487, 0, 0, N'8482ddb4-af9f-48ac-af01-3a796f8e7311', N'cat-1', NULL, NULL, CAST(N'2019-03-19T07:31:08.063' AS DateTime), 1150, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1496, 0, 0, N'85549e1f-a056-427a-8f9c-4b0eaadfc6de', N'cat-3', NULL, NULL, CAST(N'2019-03-19T07:33:52.360' AS DateTime), 1150, 0)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1488, 1, 0, N'2eb0ee7b-581f-43e7-bb6e-4b6a16f9b97b', N'onderwerp-1', NULL, NULL, CAST(N'2019-03-14T14:26:41.990' AS DateTime), 1347, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1496, 1, 0, N'7fd809c8-e12e-4031-b5c6-69cc318ee142', N'cat-3', NULL, NULL, CAST(N'2019-03-19T07:34:34.550' AS DateTime), 1150, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1493, 1, 0, N'5dce19a7-11b1-46cc-9c59-6dbaa6e612e6', N'GedeeldeInfoPagina-1', NULL, NULL, CAST(N'2019-03-14T15:02:56.177' AS DateTime), 1336, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1143, 1, 0, N'6e4299da-2fbb-4857-9eec-7b598068936d', N'NLapp Default', NULL, NULL, CAST(N'2019-03-14T15:43:45.100' AS DateTime), 1139, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1492, 1, 0, N'b515e44c-ffa7-4e5c-9454-a78c00bd568b', N'Gedeelde Inhoud', NULL, NULL, CAST(N'2019-03-14T14:40:01.553' AS DateTime), NULL, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1489, 1, 0, N'317b2587-7ef6-44c5-9af2-c1b15f7147b7', N'informatiepagina-1', NULL, NULL, CAST(N'2019-03-14T14:32:55.650' AS DateTime), 1157, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1494, 1, 0, N'38a3c649-f062-4527-852d-cd0f88412071', N'search', NULL, NULL, CAST(N'2019-03-19T07:34:34.923' AS DateTime), 1392, 1)
INSERT [dbo].[cmsDocument] ([nodeId], [published], [documentUser], [versionId], [text], [releaseDate], [expireDate], [updateDate], [templateId], [newest]) VALUES (1481, 1, 0, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', N'Gemeente', NULL, NULL, CAST(N'2019-03-14T15:52:02.317' AS DateTime), 1140, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1141, 1140, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1142, 1139, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1151, 1150, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1153, 1347, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1158, 1157, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1325, 1324, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1329, 1332, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1335, 1336, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1349, 1392, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1400, 1399, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1413, 1411, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1414, 1412, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1444, 1442, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1445, 1443, 1)
SET IDENTITY_INSERT [dbo].[cmsLanguageText] ON 

INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (13, 1, N'e703dda2-b906-48da-9c6c-009301093904', N'Related')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (14, 2, N'e703dda2-b906-48da-9c6c-009301093904', N'Gerelateerd')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (15, 3, N'e703dda2-b906-48da-9c6c-009301093904', N'متعلق')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (16, 1, N'24077766-e50e-4d08-92a1-ec86325d2523', N'Welcome')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (17, 2, N'24077766-e50e-4d08-92a1-ec86325d2523', N'Welkom')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (18, 3, N'24077766-e50e-4d08-92a1-ec86325d2523', N'أهلا بك')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (19, 1, N'684b623d-fa1e-4540-85e9-d6c4648700f1', N'Back')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (20, 2, N'684b623d-fa1e-4540-85e9-d6c4648700f1', N'Terug')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (21, 3, N'684b623d-fa1e-4540-85e9-d6c4648700f1', N'الى الخلف')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (22, 1, N'4b13094a-7f08-45df-b4cb-6087db9b3ec7', N'Search')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (23, 2, N'4b13094a-7f08-45df-b4cb-6087db9b3ec7', N'Zoeken')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (24, 3, N'4b13094a-7f08-45df-b4cb-6087db9b3ec7', N'بحث')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (25, 3, N'0883807c-b2ff-4e27-9ced-6c6cda9fe5b7', N'عنوان url')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (26, 1, N'0883807c-b2ff-4e27-9ced-6c6cda9fe5b7', N'Links')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (27, 2, N'0883807c-b2ff-4e27-9ced-6c6cda9fe5b7', N'Links')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (28, 1, N'5f0be56a-0142-4b3c-b55b-210585f02434', N'No content available')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (29, 2, N'5f0be56a-0142-4b3c-b55b-210585f02434', N'Geen inhoud aanwezig')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (30, 3, N'5f0be56a-0142-4b3c-b55b-210585f02434', N'لا محتوى متاح')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (31, 1, N'49aa358d-9114-4c08-bc31-3b126d03952a', N'English')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (32, 2, N'49aa358d-9114-4c08-bc31-3b126d03952a', N'Nederlands')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (33, 3, N'49aa358d-9114-4c08-bc31-3b126d03952a', N'العربية')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (34, 1, N'd9b2e252-3db3-4a1a-842f-9dacc4ca41cb', N'Share link')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (35, 2, N'd9b2e252-3db3-4a1a-842f-9dacc4ca41cb', N'Link delen')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (36, 3, N'd9b2e252-3db3-4a1a-842f-9dacc4ca41cb', N'مشاركة الرابط')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (37, 1, N'2ce9651c-1376-4313-953c-cf9377ab3898', N'JavaScript must be enabled for a functioning NLapp site.')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (38, 2, N'2ce9651c-1376-4313-953c-cf9377ab3898', N'JavaScript moet aan staan voor een werkende NLapp site.')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (39, 3, N'2ce9651c-1376-4313-953c-cf9377ab3898', N'يجب تمكين JavaScript لموقع NLapp فعال.')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (40, 1, N'aac3a3fe-c90a-4860-929b-245029d60cde', N'Link is copied to clipboard!')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (41, 2, N'aac3a3fe-c90a-4860-929b-245029d60cde', N'De link is gekopieerd naar het Klembord!')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (42, 3, N'aac3a3fe-c90a-4860-929b-245029d60cde', N'تم نسخ الرابط إلى الحافظة!')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (43, 1, N'746aa373-e32a-4e7a-9e43-d645cfd301fa', N'Settings')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (44, 2, N'746aa373-e32a-4e7a-9e43-d645cfd301fa', N'Instellingen')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (45, 3, N'746aa373-e32a-4e7a-9e43-d645cfd301fa', N'إعدادات')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (46, 1, N'236087fc-1790-4a38-9688-e1fd893ba04a', N'nothing found')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (47, 2, N'236087fc-1790-4a38-9688-e1fd893ba04a', N'niets gevonden')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (48, 3, N'236087fc-1790-4a38-9688-e1fd893ba04a', N'لا شيء وجد')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (54, 1, N'936252e5-12c3-4961-a3fe-36f86e2898d2', N'Select language')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (55, 2, N'936252e5-12c3-4961-a3fe-36f86e2898d2', N'Selecteer taal')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (56, 3, N'936252e5-12c3-4961-a3fe-36f86e2898d2', N'اختار اللغة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (59, 1, N'f8f2676e-8b4c-4791-becc-347534ceebee', N'Select town')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (60, 2, N'f8f2676e-8b4c-4791-becc-347534ceebee', N'Selecteer gemeente')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (61, 3, N'f8f2676e-8b4c-4791-becc-347534ceebee', N'اختر المدينة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (62, 1, N'86aaddd1-b6fa-4675-aa95-7fc4868c0b1b', N'Active language')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (63, 2, N'86aaddd1-b6fa-4675-aa95-7fc4868c0b1b', N'Actieve taal')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (64, 3, N'86aaddd1-b6fa-4675-aa95-7fc4868c0b1b', N'لغة نشطة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (65, 1, N'649994ee-828f-4f79-9438-269cc866e3f5', N'Active town')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (66, 2, N'649994ee-828f-4f79-9438-269cc866e3f5', N'Actieve gemeente')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (67, 3, N'649994ee-828f-4f79-9438-269cc866e3f5', N'المدينة النشطة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (68, 1, N'0ffb4af9-b3c4-46c1-a6bf-3a92f6af5b11', N'Close dialog')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (69, 2, N'0ffb4af9-b3c4-46c1-a6bf-3a92f6af5b11', N'Sluiten popup')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (70, 3, N'0ffb4af9-b3c4-46c1-a6bf-3a92f6af5b11', N'إغلاق الحوار')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (71, 1, N'78fd9abb-f390-43f4-8add-43b2f72e9fff', N'Open settings')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (72, 2, N'78fd9abb-f390-43f4-8add-43b2f72e9fff', N'Openen instellingen')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (73, 3, N'78fd9abb-f390-43f4-8add-43b2f72e9fff', N'فتح نافذة الإعدادات')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (74, 1, N'f797574e-c935-49b8-9988-25f3e447cac0', N'Open category page')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (75, 2, N'f797574e-c935-49b8-9988-25f3e447cac0', N'Openen categorie pagina')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (76, 3, N'f797574e-c935-49b8-9988-25f3e447cac0', N'افتح صفحة الفئات')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (77, 1, N'530e2332-bc8c-4495-93bf-2b696b17cb14', N'Go to page')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (78, 2, N'530e2332-bc8c-4495-93bf-2b696b17cb14', N'Ga naar pagina')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (79, 3, N'530e2332-bc8c-4495-93bf-2b696b17cb14', N'انتقل إلى صفحة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (80, 1, N'73528610-1886-4481-93fd-c4ae117b3a60', N'')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (81, 2, N'73528610-1886-4481-93fd-c4ae117b3a60', N'')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (82, 3, N'73528610-1886-4481-93fd-c4ae117b3a60', N'')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (83, 1, N'351e3b50-ed77-415f-beac-897e19ad6849', N'Open topic')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (84, 2, N'351e3b50-ed77-415f-beac-897e19ad6849', N'Openen onderwerp')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (85, 3, N'351e3b50-ed77-415f-beac-897e19ad6849', N'موضوع مفتوح')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (89, 1, N'389a2883-32d0-48eb-82c1-d3e5778c0816', N'Category')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (90, 2, N'389a2883-32d0-48eb-82c1-d3e5778c0816', N'Categorie')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (91, 3, N'389a2883-32d0-48eb-82c1-d3e5778c0816', N'الفئة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (95, 1, N'df7a3b30-313d-4b15-8f10-f1adf2360a2f', N'Search text')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (96, 2, N'df7a3b30-313d-4b15-8f10-f1adf2360a2f', N'Zoek tekst')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (97, 3, N'df7a3b30-313d-4b15-8f10-f1adf2360a2f', N'نص البحث')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (98, 1, N'9e5f3e35-32ab-463f-9195-ac637a110ec3', N'Chapter')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (99, 2, N'9e5f3e35-32ab-463f-9195-ac637a110ec3', N'Hoofdstuk')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (100, 3, N'9e5f3e35-32ab-463f-9195-ac637a110ec3', N'الفصل')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (104, 1, N'38bc8bab-ff7e-442d-8773-7bf17f76e402', N'Submit search')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (105, 2, N'38bc8bab-ff7e-442d-8773-7bf17f76e402', N'Zoeken uitvoeren')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (106, 3, N'38bc8bab-ff7e-442d-8773-7bf17f76e402', N'يقدم البحث')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (107, 1, N'59ae5fd2-b3f8-464c-8d8a-ee5acee1dc5e', N'Close')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (108, 2, N'59ae5fd2-b3f8-464c-8d8a-ee5acee1dc5e', N'Sluiten')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (109, 3, N'59ae5fd2-b3f8-464c-8d8a-ee5acee1dc5e', N'قريب')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (110, 1, N'd2eaeb4b-7624-4d95-bebe-8342f02f83b2', N'Back to Home page')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (111, 2, N'd2eaeb4b-7624-4d95-bebe-8342f02f83b2', N'Terug naar Home page')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (112, 3, N'd2eaeb4b-7624-4d95-bebe-8342f02f83b2', N'العودة إلى الصفحة الرئيسية')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (113, 1, N'cb98ad4e-a181-4182-94e7-ac2cd209d166', N'Open related page')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (114, 2, N'cb98ad4e-a181-4182-94e7-ac2cd209d166', N'Openen gerelateerde pagina')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (115, 3, N'cb98ad4e-a181-4182-94e7-ac2cd209d166', N'افتح الصفحة ذات الصلة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (116, 1, N'f15dd10e-3d51-4a1d-be7e-9f595e526a5b', N'Go to website')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (117, 2, N'f15dd10e-3d51-4a1d-be7e-9f595e526a5b', N'Ga naar website')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (118, 3, N'f15dd10e-3d51-4a1d-be7e-9f595e526a5b', N'الذهاب إلى الموقع')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (238, 1, N'ca6d2556-c793-4d14-933a-1261e7c527b2', N'Search results')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (239, 2, N'ca6d2556-c793-4d14-933a-1261e7c527b2', N'Zoekresultaten')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (240, 3, N'ca6d2556-c793-4d14-933a-1261e7c527b2', N'نتائج البحث')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (244, 1, N'ea7e20e4-6dc3-45cb-8442-85d12a87e6f8', N'Select language and region')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (245, 2, N'ea7e20e4-6dc3-45cb-8442-85d12a87e6f8', N'Taal en regio selecteren')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (246, 3, N'ea7e20e4-6dc3-45cb-8442-85d12a87e6f8', N'اختر اللغة والمنطقة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (310, 1, N'bc13ad5c-cb47-4d69-aef8-3480efcd5346', N'Searched for')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (311, 2, N'bc13ad5c-cb47-4d69-aef8-3480efcd5346', N'Gezocht op')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (312, 3, N'bc13ad5c-cb47-4d69-aef8-3480efcd5346', N'بحثت عن')
GO
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (768, 1, N'0c901ba9-c4b9-44af-b7e8-cf817f349437', N'Accept disclaimer')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (769, 2, N'0c901ba9-c4b9-44af-b7e8-cf817f349437', N'Accepteer voorwaarden')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (770, 3, N'0c901ba9-c4b9-44af-b7e8-cf817f349437', N'اقبل إخلاء المسؤولية')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (771, 1, N'f61dc1dd-c265-4910-9d09-e54cb187054d', N'By using this app you accept our Cookie policy and Privacy disclaimer')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (772, 2, N'f61dc1dd-c265-4910-9d09-e54cb187054d', N'Door de app te gebruiken accepteer je onze Cookie policy en Algemene voorwaarden')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (773, 3, N'f61dc1dd-c265-4910-9d09-e54cb187054d', N'باستخدام هذا التطبيق ، فإنك توافق على بيان إخلاء المسؤولية الخاص بسياسة ملفات تعريف الارتباط والخصوصية')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (774, 1, N'247b6e70-a3bb-4165-83e0-f921d083c91e', N'Our disclaimer')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (775, 2, N'247b6e70-a3bb-4165-83e0-f921d083c91e', N'Onze algemene voorwaarden')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (776, 3, N'247b6e70-a3bb-4165-83e0-f921d083c91e', N'إخلاء المسؤولية')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (777, 1, N'213f757c-35b9-4c9e-acc6-6137220b5b51', N'Cookie policy')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (778, 2, N'213f757c-35b9-4c9e-acc6-6137220b5b51', N'Cookie policy')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (779, 3, N'213f757c-35b9-4c9e-acc6-6137220b5b51', N'سياسة ملفات الارتباط')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1464, 3, N'50092156-a906-46ab-8c8d-051fdd242789', N'إضافة إلى زر الشاشة الرئيسية')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1465, 1, N'50092156-a906-46ab-8c8d-051fdd242789', N'Add to Home screen')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1466, 2, N'50092156-a906-46ab-8c8d-051fdd242789', N'Aan startscherm vastmaken')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1596, 3, N'97e4aebe-e53b-4241-82a8-a6aef7d90a73', N'إضافة إلى الشاشة الرئيسية للدعم في وضع عدم الاتصال')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1597, 1, N'97e4aebe-e53b-4241-82a8-a6aef7d90a73', N'Add to Home screen for offline support')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1598, 2, N'97e4aebe-e53b-4241-82a8-a6aef7d90a73', N'Aan startscherm vastmaken voor
offline werken')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1599, 3, N'd190fe98-3ed8-4319-845b-9f85e89fe1df', N'انقر لتثبيت التطبيق للحصول على الدعم في وضع عدم الاتصال')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1600, 1, N'd190fe98-3ed8-4319-845b-9f85e89fe1df', N'Click to install app for offline support')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1601, 2, N'd190fe98-3ed8-4319-845b-9f85e89fe1df', N'Klik om app te installeren voor offline werken')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1602, 3, N'0544e97e-c465-4bbe-a536-bb6d15e6c329', N'تثبيت التطبيق')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1603, 1, N'0544e97e-c465-4bbe-a536-bb6d15e6c329', N'Install app')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1604, 2, N'0544e97e-c465-4bbe-a536-bb6d15e6c329', N'App installeren')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1605, 3, N'e96159b6-4786-4295-b95d-86763c500cde', N'يتم تثبيت التطبيق')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1606, 1, N'e96159b6-4786-4295-b95d-86763c500cde', N'Application is installed')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1607, 2, N'e96159b6-4786-4295-b95d-86763c500cde', N'Applicatie is geïnstalleerd')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1614, 3, N'197dbf4c-7138-4796-b4ff-98b8e8508f63', N'قطع من الإنترنت')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1615, 1, N'197dbf4c-7138-4796-b4ff-98b8e8508f63', N'Disconnected from the internet')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1616, 2, N'197dbf4c-7138-4796-b4ff-98b8e8508f63', N'Niet verbonden met internet')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1617, 3, N'd82f01ae-de9a-46f2-b531-4ce7147d0475', N'متصلة بالإنترنت')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1618, 1, N'd82f01ae-de9a-46f2-b531-4ce7147d0475', N'Connected to the internet')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1619, 2, N'd82f01ae-de9a-46f2-b531-4ce7147d0475', N'Verbonden met internet')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1935, 4, N'49aa358d-9114-4c08-bc31-3b126d03952a', N'ኢንግሊዘኛ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2089, 4, N'649994ee-828f-4f79-9438-269cc866e3f5', N'ንጡፍ ምሕደራ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2090, 4, N'86aaddd1-b6fa-4675-aa95-7fc4868c0b1b', N'ንጡፍ ቋንቋ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2091, 4, N'389a2883-32d0-48eb-82c1-d3e5778c0816', N'ዓይነት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2092, 4, N'197dbf4c-7138-4796-b4ff-98b8e8508f63', N'ካብ ኢንተርነት ርክብ ኣቋሪጹ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2093, 4, N'd82f01ae-de9a-46f2-b531-4ce7147d0475', N'ናብ ኢንተርነት ርክብ ቀጺሉ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2094, 4, N'213f757c-35b9-4c9e-acc6-6137220b5b51', N'ናይ ኩኪስ ሕጊ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2095, 4, N'247b6e70-a3bb-4165-83e0-f921d083c91e', N'ናትና መግለጺ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2096, 4, N'f61dc1dd-c265-4910-9d09-e54cb187054d', N'ነዚ ኣፕሊኬሽን ብምጥቃምካ ነቲ ናትና ናይ ኩኪ ሕግን ናይ ብሕትውና መግለጺን ከም ዝተቀበልካዮ ተረጋግጽ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2097, 4, N'0c901ba9-c4b9-44af-b7e8-cf817f349437', N'መግለጺ ተቀቢለዮ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2098, 4, N'530e2332-bc8c-4495-93bf-2b696b17cb14', N'ናብ ገጽ ኪድ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2099, 4, N'e703dda2-b906-48da-9c6c-009301093904', N'ዝተተሓሓዘ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2100, 4, N'bc13ad5c-cb47-4d69-aef8-3480efcd5346', N'ነዚ __ ደሊኻ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2101, 4, N'9e5f3e35-32ab-463f-9195-ac637a110ec3', N'ምዕራፍ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2102, 4, N'50092156-a906-46ab-8c8d-051fdd242789', N'ናብ መጀመርያ ገጽ ወስኽ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2103, 4, N'746aa373-e32a-4e7a-9e43-d645cfd301fa', N'መቆጻጸሪ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2104, 4, N'ea7e20e4-6dc3-45cb-8442-85d12a87e6f8', N'ቦታን ቋንቋን ምረጽ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2105, 4, N'78fd9abb-f390-43f4-8add-43b2f72e9fff', N'መቆጻጸሪ ክፈት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2106, 4, N'0883807c-b2ff-4e27-9ced-6c6cda9fe5b7', N'መራኸቢታት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2107, 4, N'f797574e-c935-49b8-9988-25f3e447cac0', N'ናይ ዓይነታት ገጽ ክፈት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2108, 4, N'351e3b50-ed77-415f-beac-897e19ad6849', N'ኣርእስቲ ክፈት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2109, 4, N'cb98ad4e-a181-4182-94e7-ac2cd209d166', N'ዝመሳሰል ገጽ ክፈት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2110, 4, N'f15dd10e-3d51-4a1d-be7e-9f595e526a5b', N'ናብ ወብሳይት ኪድ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2111, 4, N'97e4aebe-e53b-4241-82a8-a6aef7d90a73', N'ንካብ ኢንተርነት ወጻኢ ዝድለ ሓገዝ ናብ ናይ መጀመርያ ገዝ ወስኮ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2112, 4, N'd190fe98-3ed8-4319-845b-9f85e89fe1df', N'ንካብ ኢንተርነት ወጻኢ ዝድለ ሓገዝ ኣፕሊኬሽን ጸዓን')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2113, 4, N'0544e97e-c465-4bbe-a536-bb6d15e6c329', N'ኣፕሊኬሽን ጸዓን')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2114, 4, N'e96159b6-4786-4295-b95d-86763c500cde', N'ኣፕሊኬሽን ተጻዒኑ ኣሎ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2115, 4, N'f8f2676e-8b4c-4791-becc-347534ceebee', N'ምምሕዳር ምረጽ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2116, 4, N'936252e5-12c3-4961-a3fe-36f86e2898d2', N'ቋንቋ ምረጽ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2117, 4, N'd9b2e252-3db3-4a1a-842f-9dacc4ca41cb', N'መራኸቢ ኣካፍል')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2118, 4, N'aac3a3fe-c90a-4860-929b-245029d60cde', N'መራኸቢ ተቐዲሑ ኣሎ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2119, 4, N'59ae5fd2-b3f8-464c-8d8a-ee5acee1dc5e', N'ዕጾ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2120, 4, N'0ffb4af9-b3c4-46c1-a6bf-3a92f6af5b11', N'ዝርርብ ዕጾ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2121, 4, N'684b623d-fa1e-4540-85e9-d6c4648700f1', N'ድሕሪት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2123, 4, N'd2eaeb4b-7624-4d95-bebe-8342f02f83b2', N'ናብ መጀመርያ ገጽ ተመለስ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2124, 4, N'24077766-e50e-4d08-92a1-ec86325d2523', N'እንቋዕ ብደሓን መጻእኩም')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2125, 4, N'4b13094a-7f08-45df-b4cb-6087db9b3ec7', N'ድለ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2126, 4, N'38bc8bab-ff7e-442d-8773-7bf17f76e402', N'ምድላይ ጀምር')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2127, 4, N'ca6d2556-c793-4d14-933a-1261e7c527b2', N'ናይ ምድላይ ውጽኢት')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2128, 4, N'df7a3b30-313d-4b15-8f10-f1adf2360a2f', N'መድለዪ ጽሑፍ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2129, 4, N'2ce9651c-1376-4313-953c-cf9377ab3898', N'ንሓደ ዝሰርሕ ናይ NLapp ገጽ ጃቫስክሪፕት ክኽፈት ኣለዎ።  ')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2130, 4, N'5f0be56a-0142-4b3c-b55b-210585f02434', N'ወልሓንቲ ትሕዝቶ የለን')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2131, 4, N'236087fc-1790-4a38-9688-e1fd893ba04a', N'ዝኾነ ኣይትረኽበን')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2545, 3, N'763f8f79-3757-4ebc-8212-c4824b5a3801', N'العودة إلى صفحة الفئة')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2546, 1, N'763f8f79-3757-4ebc-8212-c4824b5a3801', N'Back to category page')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2547, 2, N'763f8f79-3757-4ebc-8212-c4824b5a3801', N'Terug naar categorie pagina')
SET IDENTITY_INSERT [dbo].[cmsLanguageText] OFF
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1357, N'1ad01729-7d23-433b-9080-283a0fe18e74', NULL)
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', N'/media/1004/loremipsumimageplaceholder.png')
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1485, N'a0b03d76-864a-4b8d-bfb8-7004fae88e39', NULL)
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1356, N'ed9ef2e6-38d9-411f-8d77-7984347936bc', NULL)
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1145, N'bcf72512-bf16-4aeb-aec2-aef219e95e8e', NULL)
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1358, N'6c0f3e3c-9c81-43ca-a641-bfc8fd39ca24', NULL)
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1484, N'7c698dc1-574d-4584-92ec-d74dc7e7970a', NULL)
INSERT [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) VALUES (1482, N'ee9f5ee3-0da2-4d60-9910-ed50d83a139d', NULL)
SET IDENTITY_INSERT [dbo].[cmsMemberType] ON 

INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (1, 1044, 88, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (2, 1044, 89, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (3, 1044, 28, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (4, 1044, 29, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (5, 1044, 30, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (6, 1044, 31, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (7, 1044, 32, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (8, 1044, 33, 0, 0, 0)
INSERT [dbo].[cmsMemberType] ([pk], [NodeId], [propertytypeId], [memberCanEdit], [viewOnProfile], [isSensitive]) VALUES (9, 1044, 34, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsMemberType] OFF
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1143, N'6e4299da-2fbb-4857-9eec-7b598068936d', CAST(N'2019-03-14T15:43:45.493' AS DateTime), N'<welkom id="1143" key="96393366-e870-4e62-a313-74b0c664d32e" parentID="-1" level="1" creatorID="0" sortOrder="1" createDate="2018-04-06T15:17:49" updateDate="2019-03-14T15:43:45" nodeName="NLapp Default" urlName="nlapp-default" path="-1,1143" isDoc="" nodeType="1142" creatorName="Demo User" writerName="Demo User" writerID="1" template="1139" nodeTypeAlias="welkom" isPublished="true"><sitename><![CDATA[NLapp]]></sitename><voorwaarden><![CDATA[{"values":{"en-US":"[{\"key\":\"0d6a3153-d227-4b19-86cf-4f0fa053335c\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"We use cookies to store your settings and to improve the app.\",\"disclaimer\":\"All data used is anonymous. We will not track you in any way.\"}]","nl-NL":"[{\"key\":\"baa85582-b49c-40ff-882e-5c35e87b6f30\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"Wij gebruiken cookies om uw voorkeuren vast te leggen en voor het verbeteren van de app.\",\"disclaimer\":\"Alle gegeven zijn anoniem. Wij gebruiken geen data die kunnen worden gebruikt om u te herleiden.\"}]","ar-SY":"[{\"key\":\"4b4e1063-ac0a-4f59-83d8-e28aef6d9834\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"نستخدم ملفات تعريف الارتباط لتخزين إعداداتك ولتحسين التطبيق.\",\"disclaimer\":\"جميع البيانات المستخدمة مجهولة. لن نتتبعك بأي طريقة.\"}]","ti-ER":"[{\"key\":\"20c95948-13e3-4631-8b27-77df656005dd\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"ነዚ ኣፕሊከሽን ንምምሕያሽን ናትኩም ሰቲን ንምቕማጥን ኩኪስ ንጥቀም\",\"disclaimer\":\"ኣብ ጥቕሚ ዝውዓለ ዳታ ኹሉ ስሙ ዘይፍለጥ እዩ \\nብዝኾነ መንገዲ ኣይንከታተለኩምን\"}]"},"dtdGuid":"e0d97c5e-fa53-4dfa-aadc-5ca982ec2ea8"}]]></voorwaarden></welkom>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1462, N'e02cea85-5013-4e53-b410-272c59b86e21', CAST(N'2019-03-14T15:08:02.437' AS DateTime), N'<html_404 id="1462" key="729e8f5c-341f-4bc3-aad8-b268b20192e4" parentID="1143" level="2" creatorID="0" sortOrder="8" createDate="2018-11-08T15:38:57" updateDate="2019-03-14T15:08:02" nodeName="Html 404" urlName="html-404" path="-1,1143,1462" isDoc="" nodeType="1413" creatorName="Demo User" writerName="Demo User" writerID="1" template="1411" nodeTypeAlias="html_404" isPublished="true"><vorto_InfoPaginaContent><![CDATA[{"values":{"en-US":"[{\"key\":\"ae371390-0e3a-4bf7-9053-d1ce3972faf9\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Page not found\",\"Omschrijving\":\"<p>The page you are looking for is not available anymore.</p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"ba340069-3386-448a-bdfd-d25d813d8197\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Pagina niet gevonden\",\"Omschrijving\":\"<p>De pagina die u zoekt bestaat niet meer.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"86ee257a-46fd-4650-b7a1-86c01e7a2ee4\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"لم يتم العثور على الصفحة\",\"Omschrijving\":\"<p>الصفحة التي تبحث عنها لم تعد متوفرة بعد الآن.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"5d1c5c15-bc98-429a-ba36-d2927163feb0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"ገጽ ኣይተረኸበን \",\"Omschrijving\":\"<p>እትደልዮ ዘለኻ ገጽ ሕጂ ኣይርከብን</p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}]]></vorto_InfoPaginaContent></html_404>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', CAST(N'2019-03-14T15:52:03.120' AS DateTime), N'<home id="1481" key="43855a93-76ad-4b6d-b374-7ded42e98979" parentID="1143" level="2" creatorID="1" sortOrder="6" createDate="2019-03-14T14:10:51" updateDate="2019-03-14T15:52:02" nodeName="Gemeente" urlName="gemeente" path="-1,1143,1481" isDoc="" nodeType="1141" creatorName="Demo User" writerName="Demo User" writerID="1" template="1140" nodeTypeAlias="home" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><splashLocatieY>30</splashLocatieY><splashLocatieX>45</splashLocatieX><logo><![CDATA[umb://media/2fa55671f5b2439bbfad4207e0d1eaaf]]></logo><sitename><![CDATA[Gemeente]]></sitename><vorto_GemeenteNaam><![CDATA[{"values":{"en-US":"Gemeente"},"dtdGuid":"4d35d42d-8671-492a-8ab5-12779429cbac"}]]></vorto_GemeenteNaam></home>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1487, N'2c6d9224-7956-40be-8c85-01eb1593ac54', CAST(N'2019-03-14T14:36:53.870' AS DateTime), N'<categorie id="1487" key="c3c412f0-0fb6-4e89-badc-0547c0f80f21" parentID="1481" level="3" creatorID="1" sortOrder="0" createDate="2019-03-14T14:17:45" updateDate="2019-03-14T14:36:53" nodeName="cat-1" urlName="cat-1" path="-1,1143,1481,1487" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"CategoryOne\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"CategorieEen\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1487, N'e67934a5-be66-48f4-bb08-0fdcc08b9cb7', CAST(N'2019-03-19T07:31:26.713' AS DateTime), N'<categorie id="1487" key="c3c412f0-0fb6-4e89-badc-0547c0f80f21" parentID="1481" level="3" creatorID="1" sortOrder="0" createDate="2019-03-14T14:17:45" updateDate="2019-03-19T07:31:26" nodeName="cat-1" urlName="cat-1" path="-1,1143,1481,1487" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Category One\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Een\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1487, N'8482ddb4-af9f-48ac-af01-3a796f8e7311', CAST(N'2019-03-19T07:31:08.550' AS DateTime), N'<categorie id="1487" key="c3c412f0-0fb6-4e89-badc-0547c0f80f21" parentID="1481" level="3" creatorID="1" sortOrder="0" createDate="2019-03-14T14:17:45" updateDate="2019-03-19T07:31:08" nodeName="cat-1" urlName="cat-1" path="-1,1143,1481,1487" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"CategoryOne\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Een\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1488, N'2eb0ee7b-581f-43e7-bb6e-4b6a16f9b97b', CAST(N'2019-03-14T14:26:42.360' AS DateTime), N'<onderwerp id="1488" key="448bb71b-6f5b-42ca-981c-60ef4823ddfa" parentID="1487" level="4" creatorID="1" sortOrder="0" createDate="2019-03-14T14:20:17" updateDate="2019-03-14T14:26:41" nodeName="onderwerp-1" urlName="onderwerp-1" path="-1,1143,1481,1487,1488" isDoc="" nodeType="1153" creatorName="Demo User" writerName="Demo User" writerID="1" template="1347" nodeTypeAlias="onderwerp" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><Vorto_OnderwerpContent><![CDATA[{"values":{"en-US":"[{\"key\":\"ce57dc30-185c-45dc-8f29-4044bfa10147\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"SubjectOne\",\"omschrijving\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc.</p>\"}]","nl-NL":"[{\"key\":\"d50977fb-420d-428c-8f6b-cadf0ab26856\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"OnderwerpEen\",\"omschrijving\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc.</p>\"}]","ar-SY":"[{\"key\":\"b6038fa7-a6c7-4491-98bb-62dab366bb12\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"موضوع واحد\",\"omschrijving\":\"<p>أبجد هوز دولور الجلوس امات، إيليت consectetur adipiscing، tempor الحوار الاقتصادي الاستراتيجي والحيوية، بحيث تعبا وحزنا، وبعض الأشياء الهامة التي يجب القيام eiusmod. المستهلك أو اللاعبين باستثناء رقائق الشوكولاته التسرب. Ultricies الأسد صحيح الآن.</p>\"}]","ti-ER":"[{\"key\":\"35b84148-df66-4e0b-b33d-32ba40c22d91\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"ኣርእስቲ ጉዳይ ሓደ\",\"omschrijving\":\"<p><span>ግዜያዊ ስሩዕ ጽሑፍ</span></p>\"}]"},"dtdGuid":"97578f6d-c2be-4a4c-a773-9388e65baa9d"}]]></Vorto_OnderwerpContent></onderwerp>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1489, N'317b2587-7ef6-44c5-9af2-c1b15f7147b7', CAST(N'2019-03-14T14:32:56.030' AS DateTime), N'<infoPagina id="1489" key="d28202e7-997c-42a1-8508-183369d5e4e4" parentID="1488" level="5" creatorID="1" sortOrder="0" createDate="2019-03-14T14:21:12" updateDate="2019-03-14T14:32:55" nodeName="informatiepagina-1" urlName="informatiepagina-1" path="-1,1143,1481,1487,1488,1489" isDoc="" nodeType="1158" creatorName="Demo User" writerName="Demo User" writerID="1" template="1157" nodeTypeAlias="infoPagina" isPublished="true"><umbracoNavihide>0</umbracoNavihide><vorto_InfoPaginaContent><![CDATA[{"values":{"en-US":"[{\"key\":\"1f6c226e-d030-47b5-9402-5af102c399c5\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"InfoPaginaOne\",\"Omschrijving\":\"<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong> Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc. Fames ac turpis egestas sed. Felis bibendum ut tristique et egestas quis. Sed blandit libero volutpat sed cras ornare arcu dui vivamus. Ut morbi tincidunt augue interdum. Augue interdum velit euismod in pellentesque massa placerat duis ultricies. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Enim lobortis scelerisque fermentum dui faucibus in ornare. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Et tortor at risus viverra adipiscing at in tellus. In dictum non consectetur a erat nam at. Egestas dui id ornare arcu odio. In pellentesque massa placerat duis ultricies lacus sed turpis. Aliquet sagittis id consectetur purus ut faucibus pulvinar. Egestas pretium aenean pharetra magna ac placerat.</p>\\n<p>Ornare quam viverra orci sagittis. Ac felis donec et odio pellentesque diam volutpat commodo sed. Egestas sed tempus urna et. Mauris cursus mattis molestie a iaculis at erat pellentesque. Sit amet nisl purus in mollis nunc. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Velit ut tortor pretium viverra suspendisse potenti. Aliquam id diam maecenas ultricies mi eget. Dictum varius duis at consectetur lorem donec. Est ultricies integer quis auctor elit sed vulputate mi sit. Diam maecenas ultricies mi eget mauris. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Tellus cras adipiscing enim eu turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Porta lorem mollis aliquam ut porttitor leo a diam. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Auctor eu augue ut lectus arcu bibendum at varius. Turpis cursus in hac habitasse platea dictumst quisque.</p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"c6b516fe-4594-47fa-aec4-327396133242\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"InfoPaginaEen\",\"Omschrijving\":\"<p><strong>Volutpat odio facilisis mauris sit amet massa vitae. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Mauris augue neque gravida in fermentum et sollicitudin. Urna neque viverra justo nec ultrices dui. Consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. A lacus vestibulum sed arcu non odio euismod lacinia. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nec tincidunt praesent semper feugiat nibh. Nisl condimentum id venenatis a condimentum vitae sapien. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque.</strong> Leo integer malesuada nunc vel risus commodo viverra maecenas. In nibh mauris cursus mattis molestie a iaculis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam. Ac turpis egestas sed tempus urna et pharetra. Vitae purus faucibus ornare suspendisse sed nisi.</p>\\n<p>Sed enim ut sem viverra aliquet eget. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Posuere ac ut consequat semper viverra nam libero justo laoreet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Aliquam sem fringilla ut morbi tincidunt augue interdum. Enim diam vulputate ut pharetra sit. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Dui nunc mattis enim ut tellus elementum. Vitae nunc sed velit dignissim. Purus sit amet luctus venenatis lectus magna fringilla. Tellus mauris a diam maecenas. Velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Mattis molestie a iaculis at erat pellentesque adipiscing. Tempus egestas sed sed risus pretium. Amet mattis vulputate enim nulla aliquet porttitor lacus. Consectetur a erat nam at. Augue mauris augue neque gravida in fermentum et sollicitudin ac.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"c4417cb0-ba63-4fbf-91aa-7707a6c628eb\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"معلومات الصفحة واحد\",\"Omschrijving\":\"<p><strong>أبجد هوز دولور الجلوس امات، إيليت consectetur adipiscing، tempor الحوار الاقتصادي الاستراتيجي والحيوية، بحيث تعبا وحزنا، وبعض الأشياء الهامة التي يجب القيام eiusmod. المستهلك أو اللاعبين باستثناء رقائق الشوكولاته التسرب. Ultricies الأسد صحيح الآن. لكن egestas جوع ميلان turpis. أوقع حزينة وتريد أن تشرب منه. ولكن الجلوس في نهاية الأسبوع لكرة القدم الحرة، ولكن غدا قوس وثيقة الهوية الوحيدة. من أجل موقع بروتين رابط الدعاية. الدعاية أداء يريد بعض الأحيان للاستثمار الشامل الفصول الدراسية التغذية المدرسية. حتى فترة طويلة السريرية كرة القدم الكرتون عنصر الأرض ا</strong>لتلفزيون nibh الآن. الكرتون دوي الشوكولاته الكمبيوتر الدافئ الحلق. ولا بعض الأفلام إطلاق النار إلا بعد أن دفعت vulputate سابين malesuada bibendum arcu. ليس ذلك volutpat lacus laoreet iaculis URNA Curabitur حامل؛ حبلى. درجة الحرارة في ابتسامة سحب الجامعية في المنطقة. في الأساس لم يكن ذلك لفي. Egestas وثيقة الهوية الوحيدة في معرف أورسي arcu أوديو. واجباتها الاطفال ultricies أصحاب المشاريع العقارية الجماعية والقبيح. مثل رقم الحلق aliquet شحم consectetur بوروس sagittis. تريد كبيرة لإرضاء، وسعر Aenean pharetra.</p>\\n<p>يوافق على سحب اطلاق النار السريري. وعلى الزناد حتى قطر نهاية الأسبوع يكرهون التغذية والراحة. تريد ولكن الوقت وعاء. استهدفت تشغيل أكبر موظف العقارات في الاطفال. وهناك الكثير من اللاعبين الفلفل الحار في لينة الآن. صاحب مكان حامل المطور الحراري للكرة الطائرة كرة القدم للأطفال المقيمين. تحتاج إلى الكثير من وصفات الفلفل الحار طعم الآن بحاجة الكرتون. درجة الحرارة في الهواء الطلق لسحب السعر من الهواتف الذكية. تحتاج أحدث ultricies Maecenas بقطر. وقد تباينت أبجد حتى الطماطم إلى التزلج على الجليد. ومن ultricies عدد صحيح من هو المطور ولكن لي Vulputate هو. في حاجة إلى بدء القطر Maecenas ultricies. صاحب مكان حامل سكان الكرة الطائرة الحرارية التغذية. غدا الأرض لكرة القدم الجامعية الفقر القبيح. عمر حزين العمر والمرض والمقيمين التغذية netus آخرون malesuada الجوع. ولا بعض الأفلام إطلاق النار إلا بعد أن دفعت vulputate سابين malesuada bibendum arcu. أبجد بوابة الناعمة كمنصة للأسد مبتكرة. المطورين كتلة التمويل الآن كرة الطائرة سابين هوز ولا عقوبة. الدعاية منافسات كرة القدم تخرج قوس للشرب ومتنوعة. أبجد هوز دولور الجلوس adipiscing إيليت turpis، في سياق كل واحد.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"0d4f53c3-6ddc-4c6c-97d6-80c3d09a6fc7\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"ሓበሬታ ገጽ ሓደ\",\"Omschrijving\":\"<p><span><strong>እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉ እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ</strong> ቋንቋታት ትርጉም ዘይብሉ እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉእዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉእዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉ</span></p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}]]></vorto_InfoPaginaContent></infoPagina>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1490, N'72bb0474-5953-4546-89e4-2feb964e99e4', CAST(N'2019-03-14T14:37:55.720' AS DateTime), N'<categorie id="1490" key="df6e8ce4-5eca-4643-9fd0-0ee7b7a5c107" parentID="1481" level="3" creatorID="1" sortOrder="1" createDate="2019-03-14T14:35:44" updateDate="2019-03-14T14:37:55" nodeName="cat-2" urlName="cat-2" path="-1,1143,1481,1490" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"ae7958e7-66a3-454e-881f-fd6d62eaa312\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Category Two\"}]","nl-NL":"[{\"key\":\"7d55cd06-d7dc-4cb7-b77d-e62a0d53361a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Twee\"}]","ar-SY":"[{\"key\":\"94b1c2b5-7878-469b-ba2a-7233eb80adde\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الثانية\"}]","ti-ER":"[{\"key\":\"ae93d1eb-3623-4d2f-b688-e5bf680434a4\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ክልተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1492, N'b515e44c-ffa7-4e5c-9454-a78c00bd568b', CAST(N'2019-03-14T14:40:01.863' AS DateTime), N'<contentHolder id="1492" key="ec77487d-3d09-4d65-b961-b5d58dcf20c9" parentID="1143" level="2" creatorID="1" sortOrder="7" createDate="2019-03-14T14:40:01" updateDate="2019-03-14T14:40:01" nodeName="Gedeelde Inhoud" urlName="gedeelde-inhoud" path="-1,1143,1492" isDoc="" nodeType="1321" creatorName="Demo User" writerName="Demo User" writerID="1" template="0" nodeTypeAlias="contentHolder" isPublished="true" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1493, N'5dce19a7-11b1-46cc-9c59-6dbaa6e612e6', CAST(N'2019-03-14T15:02:56.523' AS DateTime), N'<infoPaginaNL id="1493" key="bdb57679-ee8e-4254-a18c-45812e67d444" parentID="1492" level="3" creatorID="1" sortOrder="0" createDate="2019-03-14T14:46:03" updateDate="2019-03-14T15:02:56" nodeName="GedeeldeInfoPagina-1" urlName="gedeeldeinfopagina-1" path="-1,1143,1492,1493" isDoc="" nodeType="1335" creatorName="Demo User" writerName="Demo User" writerID="1" template="1336" nodeTypeAlias="infoPaginaNL" isPublished="true"><umbracoNavihide>0</umbracoNavihide><vorto_InfoPaginaContent><![CDATA[{"values":{"en-US":"[{\"key\":\"edc363df-764d-4e4b-8881-4a702d320a2d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Shared information page One\",\"Omschrijving\":\"<p><span><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis imperdiet proin fermentum leo vel. Auctor augue mauris augue neque. Dis parturient montes nascetur ridiculus.</strong> Leo in vitae turpis massa. Non tellus orci ac auctor. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Velit scelerisque in dictum non consectetur a. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Habitant morbi tristique senectus et netus et malesuada fames. At quis risus sed vulputate odio ut enim blandit. Vulputate sapien nec sagittis aliquam malesuada bibendum. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Tortor pretium viverra suspendisse potenti nullam. Iaculis eu non diam phasellus vestibulum. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Enim blandit volutpat maecenas volutpat blandit aliquam etiam. Congue quisque egestas diam in. Consequat semper viverra nam libero justo laoreet sit.</span></p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"9b71a416-e90e-477d-b733-9fb0a621cf1e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Gedeelde informatie pagina Een\",\"Omschrijving\":\"<p><strong>Volutpat odio facilisis mauris sit amet massa vitae. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Mauris augue neque gravida in fermentum et sollicitudin.</strong> Urna neque viverra justo nec ultrices dui. Consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. A lacus vestibulum sed arcu non odio euismod lacinia. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nec tincidunt praesent semper feugiat nibh. Nisl condimentum id venenatis a condimentum vitae sapien. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. Leo integer malesuada nunc vel risus commodo viverra maecenas. In nibh mauris cursus mattis molestie a iaculis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam. Ac turpis egestas sed tempus urna et pharetra. Vitae purus faucibus ornare suspendisse sed nisi.</p>\\n<p>Sed enim ut sem viverra aliquet eget. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Posuere ac ut consequat semper viverra nam libero justo laoreet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Aliquam sem fringilla ut morbi tincidunt augue interdum. Enim diam vulputate ut pharetra sit. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Dui nunc mattis enim ut tellus elementum. Vitae nunc sed velit dignissim. Purus sit amet luctus venenatis lectus magna fringilla. Tellus mauris a diam maecenas. Velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Mattis molestie a iaculis at erat pellentesque adipiscing. Tempus egestas sed sed risus pretium. Amet mattis vulputate enim nulla aliquet porttitor lacus. Consectetur a erat nam at. Augue mauris augue neque gravida in fermentum et sollicitudin ac.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"dd2541bb-7de7-4584-a144-aa2f262a46b8\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"المعلومات المشتركة صفحة واحدة\",\"Omschrijving\":\"<p>Volutpat أوديو الجلوس امات ماسا facilisis mauris الحياة. كرة القدم هي قطر لكرة القدم صناعة القوارب أبجد الضحك الفصول الدراسية. ، وفي الاحماء، أو كونها حاملا mauris augue interdum sollicitudin السابق. غير المصنفة في موضع ultrices viverra خوستو URNA neque وثيقة الهوية الوحيدة. الفلفل الحار الطماطم وسادة الرقبة. Luctus venenatis بوروس الجلوس امات consectetur adipiscing إيليت قد يكون لها بعض الخيارات. من حمام السباحة لكني لا أكره الأداء القوس تنورة. مؤسس كرة السلة وكرة القدم الدعاية تخرج شراب في القوس. وستنجهاوس صلصة الفول السوداني أو حتى الوقت درجة الحرارة والكراهية. غير المصنفة في موضع tincidunt feugiat nibh هو الحاضر دائما. Nisl condimentum معرف سابين venenatis توابل الحياة. جواز سفر Mauris الياسمين البرتقال أو المطور الحراري حامل مكان حامل. أسد عدد صحيح أو ابتسامة الآن يرجى سحب Maecenas. التلفزيون nibh تشغيل الكثير من السكر. الإجهاد الحلق وضعت في بعض الأحيان الجزر أبجد هوز. الجزر الراحة ولا عقوبة. ولكن لا أحد تخرج قطر نهاية الأسبوع من أي وقت مضى. ولكن تطبيق القانون والوقت القبيح للوعاء وجعبة. الفلفل الحار طعم كرة القدم وليس مع وقف التنفيذ.</p>\\n<p>ولكننا نحتاج الموز كما رسم كاريكاتوري التلفزيون. الضحك من بين فكي جدا من aliquet الحياة غير المصنفة في موضع ullamcorper الجلوس امات ميل. ووضع التصوير حرة دائما سحب للتكنولوجيا. ولكن الاستفسار URNA غير المصنفة في موضع tincidunt feugiat nibh شحم دائما موجودة. A سلطة البيئي موقع تصل إلى البروتين الدعاية. Consectetuer بقطر جعبة هي. المنطقة Vulputate خوفا من الغازات السامة تصفيفة الشعر لكرة القدم الحرارية. دوي متحركة الآن للعنصر إلى المنطقة. الحياة، ولكن يريد الآن الأصول. A نقية الجلوس امات luctus venenatis LECTUS ماجنا fringilla. تيلوس mauris منصة Maecenas. في الهواء الطلق لكرة القدم وكرة القدم الاعضاء. هوز دولور الجلوس امات، consectetur adipiscing إيليت. سابين الاتحاد الأوروبي ولكن كتلة في الحلق والتلفزيون والركاب تخرج. سعر فيل أو مستويات الأسعار أن اللاعبين صفة تخرج. وهناك الكثير من التلفزيون تستهدف التغذية الجامعية. ولكن الوقت لتطبيق القانون ولكن بثمن من الضحك. امات ماتيس vulputate ENIM ولا عقوبة aliquet porttitor lacus. ولكن هناك الطماطم. Augue mauris augue sollicitudin التيار المتردد، أو كونها حاملا، وفي الاحماء.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"9b334871-198d-4bab-a337-b94bffb1251f\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"gedeelde ሓበሬታ ገጽ ሓደ\",\"Omschrijving\":\"<p><span>ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. </span></p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}]]></vorto_InfoPaginaContent></infoPaginaNL>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1494, N'009f8c16-9f85-4f22-bdc6-2066a8ebed19', CAST(N'2019-03-14T16:08:56.420' AS DateTime), N'<search id="1494" key="442ff154-207c-4c4e-b54f-865846c5fdbb" parentID="1481" level="3" creatorID="1" sortOrder="2" createDate="2019-03-14T15:05:53" updateDate="2019-03-14T16:08:56" nodeName="search" urlName="search" path="-1,1143,1481,1494" isDoc="" nodeType="1349" creatorName="Demo User" writerName="Demo User" writerID="1" template="1392" nodeTypeAlias="search" isPublished="true" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1494, N'38a3c649-f062-4527-852d-cd0f88412071', CAST(N'2019-03-19T07:34:35.460' AS DateTime), N'<search id="1494" key="442ff154-207c-4c4e-b54f-865846c5fdbb" parentID="1481" level="3" creatorID="1" sortOrder="3" createDate="2019-03-14T15:05:53" updateDate="2019-03-19T07:34:34" nodeName="search" urlName="search" path="-1,1143,1481,1494" isDoc="" nodeType="1349" creatorName="Demo User" writerName="Demo User" writerID="0" template="1392" nodeTypeAlias="search" isPublished="true" />')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1496, N'85549e1f-a056-427a-8f9c-4b0eaadfc6de', CAST(N'2019-03-19T07:33:52.810' AS DateTime), N'<categorie id="1496" key="f36ffde8-3804-49e4-a288-0aae6a37fccc" parentID="1481" level="3" creatorID="1" sortOrder="3" createDate="2019-03-19T07:33:52" updateDate="2019-03-19T07:33:52" nodeName="cat-3" urlName="cat-3" path="-1,1143,1481,1496" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="1" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"4adec9fd-af75-4c2f-91c0-469b7c3be80a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Three\"}]","nl-NL":"[{\"key\":\"e02c24e1-ccbc-4d8d-915c-7365b46f5732\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Drie\"}]","ar-SY":"[{\"key\":\"cad80f14-64c3-4ec5-989a-cedd3ac6ee05\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"القط ثلاثة\"}]","ti-ER":"[{\"key\":\"957a961d-c065-43cf-91c2-7bfb9324c77e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ሰለስተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
INSERT [dbo].[cmsPreviewXml] ([nodeId], [versionId], [timestamp], [xml]) VALUES (1496, N'7fd809c8-e12e-4031-b5c6-69cc318ee142', CAST(N'2019-03-19T07:34:34.870' AS DateTime), N'<categorie id="1496" key="f36ffde8-3804-49e4-a288-0aae6a37fccc" parentID="1481" level="3" creatorID="1" sortOrder="2" createDate="2019-03-19T07:33:52" updateDate="2019-03-19T07:34:34" nodeName="cat-3" urlName="cat-3" path="-1,1143,1481,1496" isDoc="" nodeType="1151" creatorName="Demo User" writerName="Demo User" writerID="0" template="1150" nodeTypeAlias="categorie" isPublished="true"><seoMetaDescription><![CDATA[{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}]]></seoMetaDescription><vorto_CategorieContent><![CDATA[{"values":{"en-US":"[{\"key\":\"4adec9fd-af75-4c2f-91c0-469b7c3be80a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Three\"}]","nl-NL":"[{\"key\":\"e02c24e1-ccbc-4d8d-915c-7365b46f5732\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Drie\"}]","ar-SY":"[{\"key\":\"cad80f14-64c3-4ec5-989a-cedd3ac6ee05\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"القط ثلاثة\"}]","ti-ER":"[{\"key\":\"957a961d-c065-43cf-91c2-7bfb9324c77e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ሰለስተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}]]></vorto_CategorieContent></categorie>')
SET IDENTITY_INSERT [dbo].[cmsPropertyData] ON 

INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (723, 1145, N'bcf72512-bf16-4aeb-aec2-aef219e95e8e', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2307, 1356, N'ed9ef2e6-38d9-411f-8d77-7984347936bc', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2308, 1357, N'1ad01729-7d23-433b-9080-283a0fe18e74', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (2309, 1358, N'6c0f3e3c-9c81-43ca-a641-bfc8fd39ca24', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10815, 1143, N'6e4299da-2fbb-4857-9eec-7b598068936d', 108, NULL, NULL, NULL, N'NLapp', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10816, 1143, N'6e4299da-2fbb-4857-9eec-7b598068936d', 507, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10817, 1143, N'6e4299da-2fbb-4857-9eec-7b598068936d', 430, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"0d6a3153-d227-4b19-86cf-4f0fa053335c\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"We use cookies to store your settings and to improve the app.\",\"disclaimer\":\"All data used is anonymous. We will not track you in any way.\"}]","nl-NL":"[{\"key\":\"baa85582-b49c-40ff-882e-5c35e87b6f30\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"Wij gebruiken cookies om uw voorkeuren vast te leggen en voor het verbeteren van de app.\",\"disclaimer\":\"Alle gegeven zijn anoniem. Wij gebruiken geen data die kunnen worden gebruikt om u te herleiden.\"}]","ar-SY":"[{\"key\":\"4b4e1063-ac0a-4f59-83d8-e28aef6d9834\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"نستخدم ملفات تعريف الارتباط لتخزين إعداداتك ولتحسين التطبيق.\",\"disclaimer\":\"جميع البيانات المستخدمة مجهولة. لن نتتبعك بأي طريقة.\"}]","ti-ER":"[{\"key\":\"20c95948-13e3-4631-8b27-77df656005dd\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"privacyContent\",\"cookiePolicy\":\"ነዚ ኣፕሊከሽን ንምምሕያሽን ናትኩም ሰቲን ንምቕማጥን ኩኪስ ንጥቀም\",\"disclaimer\":\"ኣብ ጥቕሚ ዝውዓለ ዳታ ኹሉ ስሙ ዘይፍለጥ እዩ \\nብዝኾነ መንገዲ ኣይንከታተለኩምን\"}]"},"dtdGuid":"e0d97c5e-fa53-4dfa-aadc-5ca982ec2ea8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10970, 1482, N'ee9f5ee3-0da2-4d60-9910-ed50d83a139d', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10976, 1484, N'7c698dc1-574d-4584-92ec-d74dc7e7970a', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10977, 1485, N'a0b03d76-864a-4b8d-bfb8-7004fae88e39', 27, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10998, 1488, N'2eb0ee7b-581f-43e7-bb6e-4b6a16f9b97b', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (10999, 1488, N'2eb0ee7b-581f-43e7-bb6e-4b6a16f9b97b', 139, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"ce57dc30-185c-45dc-8f29-4044bfa10147\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"SubjectOne\",\"omschrijving\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc.</p>\"}]","nl-NL":"[{\"key\":\"d50977fb-420d-428c-8f6b-cadf0ab26856\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"OnderwerpEen\",\"omschrijving\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc.</p>\"}]","ar-SY":"[{\"key\":\"b6038fa7-a6c7-4491-98bb-62dab366bb12\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"موضوع واحد\",\"omschrijving\":\"<p>أبجد هوز دولور الجلوس امات، إيليت consectetur adipiscing، tempor الحوار الاقتصادي الاستراتيجي والحيوية، بحيث تعبا وحزنا، وبعض الأشياء الهامة التي يجب القيام eiusmod. المستهلك أو اللاعبين باستثناء رقائق الشوكولاته التسرب. Ultricies الأسد صحيح الآن.</p>\"}]","ti-ER":"[{\"key\":\"35b84148-df66-4e0b-b33d-32ba40c22d91\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"onderwerpContent\",\"onderwerpNaam\":\"ኣርእስቲ ጉዳይ ሓደ\",\"omschrijving\":\"<p><span>ግዜያዊ ስሩዕ ጽሑፍ</span></p>\"}]"},"dtdGuid":"97578f6d-c2be-4a4c-a773-9388e65baa9d"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11003, 1489, N'317b2587-7ef6-44c5-9af2-c1b15f7147b7', 54, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11004, 1489, N'317b2587-7ef6-44c5-9af2-c1b15f7147b7', 147, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11005, 1489, N'317b2587-7ef6-44c5-9af2-c1b15f7147b7', 142, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"1f6c226e-d030-47b5-9402-5af102c399c5\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"InfoPaginaOne\",\"Omschrijving\":\"<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</strong> Accumsan in nisl nisi scelerisque eu ultrices. Ultricies leo integer malesuada nunc. Fames ac turpis egestas sed. Felis bibendum ut tristique et egestas quis. Sed blandit libero volutpat sed cras ornare arcu dui vivamus. Ut morbi tincidunt augue interdum. Augue interdum velit euismod in pellentesque massa placerat duis ultricies. Etiam tempor orci eu lobortis elementum nibh tellus molestie nunc. Enim lobortis scelerisque fermentum dui faucibus in ornare. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Et tortor at risus viverra adipiscing at in tellus. In dictum non consectetur a erat nam at. Egestas dui id ornare arcu odio. In pellentesque massa placerat duis ultricies lacus sed turpis. Aliquet sagittis id consectetur purus ut faucibus pulvinar. Egestas pretium aenean pharetra magna ac placerat.</p>\\n<p>Ornare quam viverra orci sagittis. Ac felis donec et odio pellentesque diam volutpat commodo sed. Egestas sed tempus urna et. Mauris cursus mattis molestie a iaculis at erat pellentesque. Sit amet nisl purus in mollis nunc. Elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Velit ut tortor pretium viverra suspendisse potenti. Aliquam id diam maecenas ultricies mi eget. Dictum varius duis at consectetur lorem donec. Est ultricies integer quis auctor elit sed vulputate mi sit. Diam maecenas ultricies mi eget mauris. Scelerisque mauris pellentesque pulvinar pellentesque habitant. Tellus cras adipiscing enim eu turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Porta lorem mollis aliquam ut porttitor leo a diam. Imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Auctor eu augue ut lectus arcu bibendum at varius. Turpis cursus in hac habitasse platea dictumst quisque.</p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"c6b516fe-4594-47fa-aec4-327396133242\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"InfoPaginaEen\",\"Omschrijving\":\"<p><strong>Volutpat odio facilisis mauris sit amet massa vitae. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Mauris augue neque gravida in fermentum et sollicitudin. Urna neque viverra justo nec ultrices dui. Consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. A lacus vestibulum sed arcu non odio euismod lacinia. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nec tincidunt praesent semper feugiat nibh. Nisl condimentum id venenatis a condimentum vitae sapien. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque.</strong> Leo integer malesuada nunc vel risus commodo viverra maecenas. In nibh mauris cursus mattis molestie a iaculis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam. Ac turpis egestas sed tempus urna et pharetra. Vitae purus faucibus ornare suspendisse sed nisi.</p>\\n<p>Sed enim ut sem viverra aliquet eget. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Posuere ac ut consequat semper viverra nam libero justo laoreet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Aliquam sem fringilla ut morbi tincidunt augue interdum. Enim diam vulputate ut pharetra sit. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Dui nunc mattis enim ut tellus elementum. Vitae nunc sed velit dignissim. Purus sit amet luctus venenatis lectus magna fringilla. Tellus mauris a diam maecenas. Velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Mattis molestie a iaculis at erat pellentesque adipiscing. Tempus egestas sed sed risus pretium. Amet mattis vulputate enim nulla aliquet porttitor lacus. Consectetur a erat nam at. Augue mauris augue neque gravida in fermentum et sollicitudin ac.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"c4417cb0-ba63-4fbf-91aa-7707a6c628eb\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"معلومات الصفحة واحد\",\"Omschrijving\":\"<p><strong>أبجد هوز دولور الجلوس امات، إيليت consectetur adipiscing، tempor الحوار الاقتصادي الاستراتيجي والحيوية، بحيث تعبا وحزنا، وبعض الأشياء الهامة التي يجب القيام eiusmod. المستهلك أو اللاعبين باستثناء رقائق الشوكولاته التسرب. Ultricies الأسد صحيح الآن. لكن egestas جوع ميلان turpis. أوقع حزينة وتريد أن تشرب منه. ولكن الجلوس في نهاية الأسبوع لكرة القدم الحرة، ولكن غدا قوس وثيقة الهوية الوحيدة. من أجل موقع بروتين رابط الدعاية. الدعاية أداء يريد بعض الأحيان للاستثمار الشامل الفصول الدراسية التغذية المدرسية. حتى فترة طويلة السريرية كرة القدم الكرتون عنصر الأرض ا</strong>لتلفزيون nibh الآن. الكرتون دوي الشوكولاته الكمبيوتر الدافئ الحلق. ولا بعض الأفلام إطلاق النار إلا بعد أن دفعت vulputate سابين malesuada bibendum arcu. ليس ذلك volutpat lacus laoreet iaculis URNA Curabitur حامل؛ حبلى. درجة الحرارة في ابتسامة سحب الجامعية في المنطقة. في الأساس لم يكن ذلك لفي. Egestas وثيقة الهوية الوحيدة في معرف أورسي arcu أوديو. واجباتها الاطفال ultricies أصحاب المشاريع العقارية الجماعية والقبيح. مثل رقم الحلق aliquet شحم consectetur بوروس sagittis. تريد كبيرة لإرضاء، وسعر Aenean pharetra.</p>\\n<p>يوافق على سحب اطلاق النار السريري. وعلى الزناد حتى قطر نهاية الأسبوع يكرهون التغذية والراحة. تريد ولكن الوقت وعاء. استهدفت تشغيل أكبر موظف العقارات في الاطفال. وهناك الكثير من اللاعبين الفلفل الحار في لينة الآن. صاحب مكان حامل المطور الحراري للكرة الطائرة كرة القدم للأطفال المقيمين. تحتاج إلى الكثير من وصفات الفلفل الحار طعم الآن بحاجة الكرتون. درجة الحرارة في الهواء الطلق لسحب السعر من الهواتف الذكية. تحتاج أحدث ultricies Maecenas بقطر. وقد تباينت أبجد حتى الطماطم إلى التزلج على الجليد. ومن ultricies عدد صحيح من هو المطور ولكن لي Vulputate هو. في حاجة إلى بدء القطر Maecenas ultricies. صاحب مكان حامل سكان الكرة الطائرة الحرارية التغذية. غدا الأرض لكرة القدم الجامعية الفقر القبيح. عمر حزين العمر والمرض والمقيمين التغذية netus آخرون malesuada الجوع. ولا بعض الأفلام إطلاق النار إلا بعد أن دفعت vulputate سابين malesuada bibendum arcu. أبجد بوابة الناعمة كمنصة للأسد مبتكرة. المطورين كتلة التمويل الآن كرة الطائرة سابين هوز ولا عقوبة. الدعاية منافسات كرة القدم تخرج قوس للشرب ومتنوعة. أبجد هوز دولور الجلوس adipiscing إيليت turpis، في سياق كل واحد.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"0d4f53c3-6ddc-4c6c-97d6-80c3d09a6fc7\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"ሓበሬታ ገጽ ሓደ\",\"Omschrijving\":\"<p><span><strong>እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉ እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ</strong> ቋንቋታት ትርጉም ዘይብሉ እዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉእዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉእዚ ስሩዕ ናይ ሓበሬታ page ሓደ እዩ, ናይ ቋንቋታት ትርጉም ዘይብሉ</span></p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11008, 1487, N'2c6d9224-7956-40be-8c85-01eb1593ac54', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11009, 1487, N'2c6d9224-7956-40be-8c85-01eb1593ac54', 137, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"CategoryOne\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"CategorieEen\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11010, 1490, N'72bb0474-5953-4546-89e4-2feb964e99e4', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11011, 1490, N'72bb0474-5953-4546-89e4-2feb964e99e4', 137, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"ae7958e7-66a3-454e-881f-fd6d62eaa312\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Category Two\"}]","nl-NL":"[{\"key\":\"7d55cd06-d7dc-4cb7-b77d-e62a0d53361a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Twee\"}]","ar-SY":"[{\"key\":\"94b1c2b5-7878-469b-ba2a-7233eb80adde\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الثانية\"}]","ti-ER":"[{\"key\":\"ae93d1eb-3623-4d2f-b688-e5bf680434a4\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ክልተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11012, 1493, N'5dce19a7-11b1-46cc-9c59-6dbaa6e612e6', 54, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11013, 1493, N'5dce19a7-11b1-46cc-9c59-6dbaa6e612e6', 153, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11014, 1493, N'5dce19a7-11b1-46cc-9c59-6dbaa6e612e6', 154, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"edc363df-764d-4e4b-8881-4a702d320a2d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Shared information page One\",\"Omschrijving\":\"<p><span><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis imperdiet proin fermentum leo vel. Auctor augue mauris augue neque. Dis parturient montes nascetur ridiculus.</strong> Leo in vitae turpis massa. Non tellus orci ac auctor. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Velit scelerisque in dictum non consectetur a. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat. Habitant morbi tristique senectus et netus et malesuada fames. At quis risus sed vulputate odio ut enim blandit. Vulputate sapien nec sagittis aliquam malesuada bibendum. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus. Tortor pretium viverra suspendisse potenti nullam. Iaculis eu non diam phasellus vestibulum. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Enim blandit volutpat maecenas volutpat blandit aliquam etiam. Congue quisque egestas diam in. Consequat semper viverra nam libero justo laoreet sit.</span></p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"9b71a416-e90e-477d-b733-9fb0a621cf1e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Gedeelde informatie pagina Een\",\"Omschrijving\":\"<p><strong>Volutpat odio facilisis mauris sit amet massa vitae. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies. Mauris augue neque gravida in fermentum et sollicitudin.</strong> Urna neque viverra justo nec ultrices dui. Consectetur purus ut faucibus pulvinar. Consectetur adipiscing elit ut aliquam purus sit amet luctus venenatis. A lacus vestibulum sed arcu non odio euismod lacinia. Ultrices vitae auctor eu augue ut lectus arcu bibendum at. Tortor condimentum lacinia quis vel eros donec ac odio tempor. Nec tincidunt praesent semper feugiat nibh. Nisl condimentum id venenatis a condimentum vitae sapien. Congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. Leo integer malesuada nunc vel risus commodo viverra maecenas. In nibh mauris cursus mattis molestie a iaculis. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Sit amet commodo nulla facilisi. Semper quis lectus nulla at volutpat diam. Ac turpis egestas sed tempus urna et pharetra. Vitae purus faucibus ornare suspendisse sed nisi.</p>\\n<p>Sed enim ut sem viverra aliquet eget. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Posuere ac ut consequat semper viverra nam libero justo laoreet. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Aliquam sem fringilla ut morbi tincidunt augue interdum. Enim diam vulputate ut pharetra sit. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Dui nunc mattis enim ut tellus elementum. Vitae nunc sed velit dignissim. Purus sit amet luctus venenatis lectus magna fringilla. Tellus mauris a diam maecenas. Velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Massa sapien faucibus et molestie ac feugiat sed lectus vestibulum. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus. Mattis molestie a iaculis at erat pellentesque adipiscing. Tempus egestas sed sed risus pretium. Amet mattis vulputate enim nulla aliquet porttitor lacus. Consectetur a erat nam at. Augue mauris augue neque gravida in fermentum et sollicitudin ac.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"dd2541bb-7de7-4584-a144-aa2f262a46b8\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"المعلومات المشتركة صفحة واحدة\",\"Omschrijving\":\"<p>Volutpat أوديو الجلوس امات ماسا facilisis mauris الحياة. كرة القدم هي قطر لكرة القدم صناعة القوارب أبجد الضحك الفصول الدراسية. ، وفي الاحماء، أو كونها حاملا mauris augue interdum sollicitudin السابق. غير المصنفة في موضع ultrices viverra خوستو URNA neque وثيقة الهوية الوحيدة. الفلفل الحار الطماطم وسادة الرقبة. Luctus venenatis بوروس الجلوس امات consectetur adipiscing إيليت قد يكون لها بعض الخيارات. من حمام السباحة لكني لا أكره الأداء القوس تنورة. مؤسس كرة السلة وكرة القدم الدعاية تخرج شراب في القوس. وستنجهاوس صلصة الفول السوداني أو حتى الوقت درجة الحرارة والكراهية. غير المصنفة في موضع tincidunt feugiat nibh هو الحاضر دائما. Nisl condimentum معرف سابين venenatis توابل الحياة. جواز سفر Mauris الياسمين البرتقال أو المطور الحراري حامل مكان حامل. أسد عدد صحيح أو ابتسامة الآن يرجى سحب Maecenas. التلفزيون nibh تشغيل الكثير من السكر. الإجهاد الحلق وضعت في بعض الأحيان الجزر أبجد هوز. الجزر الراحة ولا عقوبة. ولكن لا أحد تخرج قطر نهاية الأسبوع من أي وقت مضى. ولكن تطبيق القانون والوقت القبيح للوعاء وجعبة. الفلفل الحار طعم كرة القدم وليس مع وقف التنفيذ.</p>\\n<p>ولكننا نحتاج الموز كما رسم كاريكاتوري التلفزيون. الضحك من بين فكي جدا من aliquet الحياة غير المصنفة في موضع ullamcorper الجلوس امات ميل. ووضع التصوير حرة دائما سحب للتكنولوجيا. ولكن الاستفسار URNA غير المصنفة في موضع tincidunt feugiat nibh شحم دائما موجودة. A سلطة البيئي موقع تصل إلى البروتين الدعاية. Consectetuer بقطر جعبة هي. المنطقة Vulputate خوفا من الغازات السامة تصفيفة الشعر لكرة القدم الحرارية. دوي متحركة الآن للعنصر إلى المنطقة. الحياة، ولكن يريد الآن الأصول. A نقية الجلوس امات luctus venenatis LECTUS ماجنا fringilla. تيلوس mauris منصة Maecenas. في الهواء الطلق لكرة القدم وكرة القدم الاعضاء. هوز دولور الجلوس امات، consectetur adipiscing إيليت. سابين الاتحاد الأوروبي ولكن كتلة في الحلق والتلفزيون والركاب تخرج. سعر فيل أو مستويات الأسعار أن اللاعبين صفة تخرج. وهناك الكثير من التلفزيون تستهدف التغذية الجامعية. ولكن الوقت لتطبيق القانون ولكن بثمن من الضحك. امات ماتيس vulputate ENIM ولا عقوبة aliquet porttitor lacus. ولكن هناك الطماطم. Augue mauris augue sollicitudin التيار المتردد، أو كونها حاملا، وفي الاحماء.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"9b334871-198d-4bab-a337-b94bffb1251f\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"gedeelde ሓበሬታ ገጽ ሓደ\",\"Omschrijving\":\"<p><span>ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. ወልሓንቲ ትርጉም ኣይህብን. እዚ ጽሑፍ ብገዛእ ርእሱ. </span></p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11018, 1462, N'e02cea85-5013-4e53-b410-272c59b86e21', 488, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"ae371390-0e3a-4bf7-9053-d1ce3972faf9\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Page not found\",\"Omschrijving\":\"<p>The page you are looking for is not available anymore.</p>\",\"links\":\"[]\"}]","nl-NL":"[{\"key\":\"ba340069-3386-448a-bdfd-d25d813d8197\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"Pagina niet gevonden\",\"Omschrijving\":\"<p>De pagina die u zoekt bestaat niet meer.</p>\",\"links\":\"[]\"}]","ar-SY":"[{\"key\":\"86ee257a-46fd-4650-b7a1-86c01e7a2ee4\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"لم يتم العثور على الصفحة\",\"Omschrijving\":\"<p>الصفحة التي تبحث عنها لم تعد متوفرة بعد الآن.</p>\",\"links\":\"[]\"}]","ti-ER":"[{\"key\":\"5d1c5c15-bc98-429a-ba36-d2927163feb0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"infoPaginaContent\",\"Titel\":\"ገጽ ኣይተረኸበን \",\"Omschrijving\":\"<p>እትደልዮ ዘለኻ ገጽ ሕጂ ኣይርከብን</p>\",\"links\":\"[]\"}]"},"dtdGuid":"50e75ced-0a10-4359-bcb3-908234b8ef57"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11755, 1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', 6, NULL, NULL, NULL, NULL, N'{"src": "/media/1004/loremipsumimageplaceholder.png", "crops": []}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11756, 1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', 7, NULL, NULL, NULL, N'425', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11757, 1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', 8, NULL, NULL, NULL, N'352', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11758, 1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', 9, NULL, NULL, NULL, N'17086', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11759, 1495, N'00304d01-e0d9-4d94-b2c0-3145caa5231b', 10, NULL, NULL, NULL, N'png', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11760, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11761, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', 169, 30, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11762, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', 168, 45, NULL, NULL, NULL, NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11763, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', 463, NULL, NULL, NULL, NULL, N'umb://media/2fa55671f5b2439bbfad4207e0d1eaaf')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11764, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', 94, NULL, NULL, NULL, N'Gemeente', NULL)
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11765, 1481, N'35752adc-18e2-49be-a254-fd2c76e1f7d2', 155, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"Gemeente"},"dtdGuid":"4d35d42d-8671-492a-8ab5-12779429cbac"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11766, 1487, N'8482ddb4-af9f-48ac-af01-3a796f8e7311', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11767, 1487, N'8482ddb4-af9f-48ac-af01-3a796f8e7311', 137, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"CategoryOne\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Een\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11768, 1487, N'e67934a5-be66-48f4-bb08-0fdcc08b9cb7', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11769, 1487, N'e67934a5-be66-48f4-bb08-0fdcc08b9cb7', 137, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"c6f24aac-7bb8-41a6-9041-39a2057ca306\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Category One\"}]","nl-NL":"[{\"key\":\"42638a14-a407-4f2a-95f9-03d53dd6e5e0\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Categorie Een\"}]","ar-SY":"[{\"key\":\"2f8f903c-0a90-433f-b14f-88fa1019aa4d\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"الفئة الأولى\"}]","ti-ER":"[{\"key\":\"b733a859-d6f6-466e-9d47-5df842e19137\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ምቃል ሓደ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11770, 1496, N'85549e1f-a056-427a-8f9c-4b0eaadfc6de', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11771, 1496, N'85549e1f-a056-427a-8f9c-4b0eaadfc6de', 137, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"4adec9fd-af75-4c2f-91c0-469b7c3be80a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Three\"}]","nl-NL":"[{\"key\":\"e02c24e1-ccbc-4d8d-915c-7365b46f5732\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Drie\"}]","ar-SY":"[{\"key\":\"cad80f14-64c3-4ec5-989a-cedd3ac6ee05\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"القط ثلاثة\"}]","ti-ER":"[{\"key\":\"957a961d-c065-43cf-91c2-7bfb9324c77e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ሰለስተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11772, 1496, N'7fd809c8-e12e-4031-b5c6-69cc318ee142', 113, NULL, NULL, NULL, NULL, N'{"values":null,"dtdGuid":"98025aec-bd9b-479d-abc3-55d5634795a8"}')
INSERT [dbo].[cmsPropertyData] ([id], [contentNodeId], [versionId], [propertytypeid], [dataInt], [dataDecimal], [dataDate], [dataNvarchar], [dataNtext]) VALUES (11773, 1496, N'7fd809c8-e12e-4031-b5c6-69cc318ee142', 137, NULL, NULL, NULL, NULL, N'{"values":{"en-US":"[{\"key\":\"4adec9fd-af75-4c2f-91c0-469b7c3be80a\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Three\"}]","nl-NL":"[{\"key\":\"e02c24e1-ccbc-4d8d-915c-7365b46f5732\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"Cat Drie\"}]","ar-SY":"[{\"key\":\"cad80f14-64c3-4ec5-989a-cedd3ac6ee05\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"القط ثلاثة\"}]","ti-ER":"[{\"key\":\"957a961d-c065-43cf-91c2-7bfb9324c77e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"categoriecontent\",\"categorieNaam\":\"ሰለስተ\"}]"},"dtdGuid":"74054186-9af0-4e65-95de-cb25082b332f"}')
SET IDENTITY_INSERT [dbo].[cmsPropertyData] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Upload image', 0, 0, NULL, NULL, N'00000006-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (7, -92, 1032, 3, N'umbracoWidth', N'Width', 1, 0, NULL, NULL, N'00000007-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (8, -92, 1032, 3, N'umbracoHeight', N'Height', 2, 0, NULL, NULL, N'00000008-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (9, -92, 1032, 3, N'umbracoBytes', N'Size', 3, 0, NULL, NULL, N'00000009-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 4, 0, NULL, NULL, N'0000000a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', 0, 0, NULL, NULL, N'00000018-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 1, 0, NULL, NULL, N'00000019-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (26, -92, 1033, 4, N'umbracoBytes', N'Size', 2, 0, NULL, NULL, N'0000001a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (27, -96, 1031, 5, N'contents', N'Contents:', 0, 0, NULL, NULL, N'0000001b-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, N'0000001c-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (29, -92, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', 1, 0, NULL, NULL, N'0000001d-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', 2, 0, NULL, NULL, N'0000001e-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', 3, 0, NULL, NULL, N'0000001f-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (32, -92, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', 4, 0, NULL, NULL, N'00000020-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (33, -92, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', 5, 0, NULL, NULL, N'00000021-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (34, -92, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', 6, 0, NULL, NULL, N'00000022-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (35, -88, 1082, 12, N'pageTitle', N'Page Title', 0, 1, NULL, N'The title of the page, this is also the first text in a google search result. The ideal length is between 40 and 60 characters', N'608ebb97-f0d7-4876-8b66-47f3657d2355')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (37, -89, 1083, 13, N'featureDetails', N'Details', 1, 0, NULL, NULL, N'b867d62a-196b-48ca-a62a-bfaaa3669ba0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (38, -88, 1083, 13, N'featureName', N'Name', 0, 1, NULL, NULL, N'a93d3383-fe4e-4eba-a942-25715170c444')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (54, -49, 1085, 646, N'umbracoNavihide', N'Hide in Navigation', 4, 0, N'', N'If you don''t want this page to appear in the navigation, check this box', N'03e7e852-865a-46e7-ad7c-55cf2c1564c0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (88, -92, 1044, NULL, N'umbracoMemberPasswordRetrievalAnswer', N'Password Answer', 0, 0, NULL, NULL, N'9e8ea274-6837-401c-bb66-79f6045e21c3')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (89, -92, 1044, NULL, N'umbracoMemberPasswordRetrievalQuestion', N'Password Question', 1, 0, NULL, NULL, N'b73da71f-0078-436f-8cea-4be87730c557')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (94, -88, 1141, 32, N'sitename', N'Sitename', 0, 1, N'', N'Used on the homepage as well as the title and social cards', N'824d712e-9290-48d1-816c-7275349f169d')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (108, -88, 1142, 36, N'sitename', N'Sitename', 3, 1, N'', N'Used on the homepage as well as the title and social cards', N'30350235-7a36-442c-9eeb-438695f54d22')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (113, 1194, 1152, 39, N'seoMetaDescription', N'Description', 1, 0, N'', N'A brief description of the content on your page. This text is shown below the title in a google search result and also used for Social Sharing Cards. The ideal length is between 130 and 155 characters', N'2a5fdc40-11f4-4006-8ed3-09e63e8f7545')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (136, 1174, 1169, 49, N'categorieNaam', N'Categorie naam', 0, 0, NULL, NULL, N'fd3ff8ca-b4d1-4d0c-846f-e0e064e57264')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (137, 1205, 1151, 44, N'vorto_CategorieContent', N'Categorie content', 0, 0, N'', N'', N'71ebbac5-e5c7-43c0-a7d8-dac7063ff3b5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (138, 1174, 1173, 45, N'onderwerpNaam', N'Onderwerp naam', 0, 0, N'', N'', N'd2582bcb-fcf1-4121-86c5-4e03b93b6031')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (139, 1183, 1153, 46, N'Vorto_OnderwerpContent', N'Onderwerp content', 0, 0, N'', N'', N'463c9f45-7753-4001-a0ac-0bb907c41ea0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (140, 1174, 1186, 50, N'Titel', N'Titel', 0, 0, N'', N'', N'39653683-9404-4215-9ce2-7cc943a84c22')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (141, 1184, 1186, 50, N'Omschrijving', N'Omschrijving', 1, 0, N'', N'', N'e4310a46-04b3-4683-a49f-414614f6afe5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (142, 1187, 1158, 47, N'vorto_InfoPaginaContent', N'Vorto_InfoPaginaContent', 0, 0, N'', N'', N'1366e50f-bde3-4599-a265-9040b64fa9bc')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (147, 1241, 1158, 47, N'gerelateerdeContentMulti', N'Gerelateerd', 2, 0, N'', N'', N'1a419d16-bd47-459a-8072-7f52e5bd8539')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (151, 1330, 1325, 54, N'inhoudKiezer', N'Inhoud kiezer', 0, 0, NULL, NULL, N'1d4ecfc4-78fc-43d1-9e6a-4e65b6b6ee67')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (152, 1318, 1329, 55, N'inhoudKiezer', N'Inhoud kiezer', 0, 0, NULL, NULL, N'22f0ad37-b2d4-4370-87c6-05e5641d3459')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (153, 1241, 1335, 56, N'gerelateerdeContentMulti', N'Gerelateerd', 2, 0, N'', N'', N'efd7acea-6a8d-44ad-a1ed-8565f317ebe7')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (154, 1187, 1335, 56, N'vorto_InfoPaginaContent', N'Vorto_InfoPaginaContent', 0, 0, N'', N'', N'd0847952-b70f-4336-bb91-cd83df6dbbfa')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (155, 1342, 1141, 32, N'vorto_GemeenteNaam', N'Gemeentenaam', 1, 0, N'', N'', N'5a11dbab-06f3-4b9e-a0cb-e3acdfc13e4b')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (156, 1352, 1173, 45, N'omschrijving', N'Omschrijving', 1, 0, N'', N'', N'740b18f9-57f0-4cd8-af95-a435c8295a51')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (164, 1364, 1186, 50, N'links', N'Links', 2, 0, N'', N'', N'ff41c001-31a8-4f17-9187-3a3304bbe690')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (167, 1370, 1369, 57, N'date', N'Date', 0, 0, N'', N'', N'29eb7de5-c439-4c80-92f7-41c51bda1bfd')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (168, 1366, 1141, 32, N'splashLocatieX', N'Splash locatie X', 2, 0, N'', N'X-coördinaat voor het plaatsen van de gemeente op het Splash-scherm', N'ba58b2c6-ba82-4e0c-af25-458f1b88fd7a')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (169, 1367, 1141, 32, N'splashLocatieY', N'Splash locatie Y', 3, 0, N'', N'Y-coördinaat voor het plaatsen van de gemeente op het Splash-scherm', N'a7d44880-e420-4769-8491-435e846ff603')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (335, 1379, 1381, 206, N'cookiePolicy', N'Cookie policy', 0, 0, NULL, NULL, N'1aa1f816-47ef-4a15-ad35-d132f77b0392')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (336, 1380, 1381, 206, N'disclaimer', N'Disclaimer', 1, 0, NULL, NULL, N'e4710317-f14b-4446-af7b-9ea56bcdccdf')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (430, 1383, 1142, 294, N'voorwaarden', N'Voorwaarden', 0, 0, N'', N'', N'e25b9e87-8d19-48f1-a8a3-1ba9035e91ad')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (463, 1395, 1141, 32, N'logo', N'Logo', 4, 0, NULL, NULL, N'0dd1e536-e085-4079-9675-45a3760da9ba')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (468, 1404, 1400, 330, N'vorto_kaarttitel', N'Titel', 0, 0, N'', N'', N'94b527ec-847d-4eee-89b2-4057e6bb94e2')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (487, 1408, 1400, 330, N'mapLinks', N'Kaarten', 2, 1, N'', N'', N'97c2bb96-4e0b-4862-8e36-cbc6fd394a40')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (488, 1187, 1413, 349, N'vorto_InfoPaginaContent', N'Vorto_InfoPaginaContent', 0, 0, N'', N'', N'533cd6ad-1e20-4ee2-80fd-6a09bf776a38')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [UniqueID]) VALUES (507, 1415, 1142, 36, N'subtitel', N'Subtitel', 4, 0, N'', N'', N'a726c151-a7be-43e2-9d0e-c7b8296a990c')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (3, 1032, N'Image', 1, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (4, 1033, N'File', 1, N'50899f9c-023a-4466-b623-aba9049885fe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (5, 1031, N'Contents', 1, N'79995fa2-63ee-453c-a29b-2e66f324cdbe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (11, 1044, N'Membership', 1, N'0756729d-d665-46e3-b84a-37aceaa614f8')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (12, 1082, N'Content', 0, N'a3f2c95c-ed97-4d79-bd1e-a47a2e3cf32a')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (13, 1083, N'Feature', 0, N'b5fb9a6a-14c6-4a5d-b7e4-7205afe0dc1e')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (32, 1141, N'Design', 3, N'c30bf6e1-9b7e-4629-9588-26a11014672e')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (36, 1142, N'Design', 3, N'6f7aeb09-d37f-4954-b856-ceccb98d7345')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (39, 1152, N'Navigation & SEO', 100, N'fde02454-d2f1-4ee1-ab92-9ac7d2bb08ed')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (44, 1151, N'Inhoud', 0, N'0338fc9c-5063-4a30-be78-a017eddbe936')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (45, 1173, N'Content', 100, N'5893ae55-5d7f-47e8-9613-7280ab22f8ba')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (46, 1153, N'Content', 0, N'296a6008-7247-42d2-85c9-f2047b9fa899')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (47, 1158, N'Inhoud', 0, N'2fd9ffd7-3329-4086-b7f8-fce4c868f75f')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (49, 1169, N'Content', 101, N'2de1ba4d-9aa7-423e-a5d2-e8bc4f5ea13c')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (50, 1186, N'Content', 0, N'365ef6bf-72df-4d97-a3d6-161b43dd8e7e')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (54, 1325, N'Gemeentelijk Inhoud', 0, N'e323e6fd-c366-4be3-b99d-20c39deb6a9a')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (55, 1329, N'Landelijk inhoud', 0, N'a6f16910-1bbd-4da5-a427-f1974889d35e')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (56, 1335, N'Inhoud', 0, N'a9eb2832-b076-4a69-afcc-282303482fae')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (57, 1369, N'T', 0, N'c14f4774-be6f-4824-b016-6fc359f0b661')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (206, 1381, N'Privacy', 0, N'de73de47-e0d2-4d43-a2b6-ec1c7f7a181a')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (294, 1142, N'Privacy', 4, N'0981fbe9-65cd-4948-b342-85737c2f9d49')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (330, 1400, N'Kaart', 0, N'ed158b09-f9d8-4016-86c2-3fc4e5a55466')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (349, 1413, N'Inhoud', 0, N'a0956f9f-ba19-480c-adaa-12ea81cdbb85')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (646, 1085, N'Navigation', 100, N'56eca063-5362-4dde-9320-ebde9d758e8c')
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
SET IDENTITY_INSERT [dbo].[cmsTags] ON 

INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (1, N'demo', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (2, N'starter kit', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (3, N'umbraco', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (4, N'Denmark', NULL, N'department')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (5, N'mvp', NULL, N'department')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (6, N'bingo', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (7, N'clothing', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (8, N'cg16', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (9, N'codegarden', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (10, N'United Kingdom', NULL, N'department')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (11, N'dedication', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (12, N'tattoo', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (13, N'great', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (14, N'animals', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (15, N'sports', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (16, N'Netherlands', NULL, N'department')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (17, N'fashion', NULL, N'default')
INSERT [dbo].[cmsTags] ([id], [tag], [ParentId], [group]) VALUES (18, N'music', NULL, N'default')
SET IDENTITY_INSERT [dbo].[cmsTags] OFF
SET IDENTITY_INSERT [dbo].[cmsTaskType] ON 

INSERT [dbo].[cmsTaskType] ([id], [alias]) VALUES (1, N'toTranslate')
SET IDENTITY_INSERT [dbo].[cmsTaskType] OFF
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (12, 1138, N'MasterNLapp', N'@using ContentModels = NLappCMS.Models;

@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
    Layout = null;

    // Get basic design settings from the root page
    ContentModels.Welkom root = Model.Content.Site() as ContentModels.Welkom;

    var localhost = "https://localhost:44396/";
}

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="msapplication-config" content="/browserconfig.xml" />
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">

    <title>@Model.Content.Name - @root.Sitename</title>

    <!-- Content Security Policy -->
    <meta http-equiv="Content-Security-Policy" content="block-all-mixed-content; upgrade-insecure-requests; default-src ''self''; style-src @localhost; img-src * ; media-src https://*; child-src https://youtube.com; script-src ''self'' ''unsafe-inline'' @localhost https://code.jquery.com https://ajax.aspnetcdn.com https://code.jquery.com; font-src https://www.googleapis.com/webfonts/v1/webfonts; object-src ''none'';">

    <!-- SEO -->
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Preload -->
    <link rel=”preload”>

    <!-- CSS -->
    <link rel="stylesheet" href="@Url.Content(" /css/nlapp.min.css")" />

    <!-- Progressive Wep App manifest -->
    <link rel="manifest" href="./pwa/manifest.json">

    @RenderSection("Header", required: false)

    <!-- Icons -->
    <link rel="icon" href="/icons/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" sizes="57x57" href="/icons/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/icons/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/icons/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/icons/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/icons/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/icons/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/icons/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/icons/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/icons/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="/icons/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/icons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/icons/favicon-16x16.png">
</head>

<body>

    <header>

        <div id="header">
            Master header
        </div>

    </header>

    <main>
        @RenderBody()
    </main>

    <footer>
        <div id="footer">
            @root.FooterDescription
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>

    <script src="@Url.Content("/scripts/nlapp.min.js")"></script>

    @RenderSection("Scripts", false)

</body>

</html>
')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (13, 1139, N'WelkomTemplate', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.Welkom>

@using Umbraco.Web;
@using Umbraco.Core;

@{
    Layout = "MasterNLapp.cshtml";

    var gemeenteHomePages = Model.Content.Site().Children("home").Where(x => x.IsVisible());
    var languages = ApplicationContext.Current.Services.LocalizationService.GetAllLanguages();

    // Get Welcome-labels in language itself
    var dictionaryTranslations = ApplicationContext.Services.LocalizationService
        .GetDictionaryItemByKey("welkom").Translations;
}

    <div class="welcome step1">
        <div class="wrapper">
            <button type="button" class="back">Back</button>
            <div id="language">
                <div class="content">
                    @foreach(var language in languages)
                    {
                        <button type="button" class="@language.IsoCode">
                            @dictionaryTranslations.SingleOrDefault(x => x.Language.IsoCode.Equals(language.IsoCode)).Value
                        </button>
                    }
                </div>
            </div>
            <div id="township">
                <div class="content">
                    @foreach (var language in languages)
                    {
                        <div class="lang" id="@language.IsoCode">

                        @foreach (var gemeente in gemeenteHomePages)
                        {
                            <a href="#" class="btn @gemeente.Name">@gemeente.Name</a>
                        }
                        </div>
                    }
                </div>
            </div>
        </div>
    </div>


    <!--<section>
        <div>
            <ul>
                @foreach (var gemeente in gemeenteHomePages)
                {
                    <li>
                        <span>@gemeente.Name</span>

                        <ul>
                            @foreach (var language in languages)
                            {
                                <li>
                                    <input class="user-settings"
                                           type="button"
                                           value="@language.IsoCode"
                                           data-taal="@language.IsoCode"
                                           data-gemeente="@gemeente.Name" />
                                    <br />
                                    <br />
                                </li>
                            }
                        </ul>
                    </li>
                }
            </ul>


            <div>
                <h1>Welkom</h1>
                <div id="user-choice"></div>
                <br />
                <input id="display-usersettings" type="button" value="Toon keuze" data-selector="#user-choice" />
                <input id="flush-usersettings" type="button" value="Verwijder keuze" />
                <input id="goto-home" type="button" value="Naar Home page" />
            </div>
        </div>
    </section>
    -->

   
    @section Scripts {
        <script type="text/javascript">
            // bind event listeners to view
            //$(".user-settings").bind("click", window.nlapp.welkom.storeUserSettings);
            //$("#flush-usersettings").bind("click", window.nlapp.welkom.flushUserSettings);
            //$("#display-usersettings").bind("click", window.nlapp.welkom.displayUserSettings);
            //$("#goto-home").bind("click", window.nlapp.welkom.redirectToHome);
        </script>
    }')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (14, 1140, N'HomeTemplate', N'@using ContentModels = NLappCMS.Models;

@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.Home>
@{
    Layout = "MasterNLapp.cshtml";
}

<section>
    <div>HOME PAGE</div>
</section>

<footer>
    <div>
        @Model.Content.FooterDescription
    </div>
</footer>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (15, 1150, N'CategorieTemplate', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<ContentModels.Categorie>
@using ContentModels = Umbraco.Web.PublishedContentModels;
@{
    Layout = "MasterNLapp.cshtml";
}')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (16, 1157, N'InfoPaginaTemplate', N'@using ClientDependency.Core
@using NLappCMS.Models
@using Our.Umbraco.Vorto.Extensions
@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.InfoPagina>

@{
    Layout = "MasterNLapp.cshtml";
}

<section>
    @Html.Partial("InfoPagina", Model);
</section>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (20, 1324, N'InfoPaginaLinkTemplate', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.InfoPaginaLink>
@using NLappCMS.Models


@{
    Layout = "MasterNLapp.cshtml";
    
    int contentId = Model.Content.InhoudKiezer.First().Id;
    var linkedInfoPagina = (InfoPagina)Umbraco.TypedContent(contentId);
}

<section>
    @Html.Partial("InfoPagina", linkedInfoPagina);
</section>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (22, 1332, N'InfoPaginaLinkNLTemplate', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.InfoPaginaLinkNL>
@using NLappCMS.Models

@{
    Layout = "MasterNLapp.cshtml";

    int contentId = Model.Content.InhoudKiezer.First().Id;
    var linkedInfoPaginaNL = (InfoPaginaNL)Umbraco.TypedContent(contentId);
}

<section>
    @Html.Partial("InfoPaginaNL", linkedInfoPaginaNL);
</section>

')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (23, 1336, N'infoPaginaNLTemplate', N'@using ClientDependency.Core
@using NLappCMS.Models
@using Our.Umbraco.Vorto.Extensions
@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.InfoPaginaNL>

@{
    Layout = "MasterNLapp.cshtml";
}

<section>
    @Html.Partial("InfoPaginaNL", Model);
</section>
                ')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (24, 1347, N'OnderwerpTemplate', N'
@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.Onderwerp>

@{
    Layout = "MasterNLapp.cshtml";
    var infoPaginas = Model.Content.Children<NLappCMS.Models.InfoPagina>();
}

<section>
    
    @foreach (var pagina in infoPaginas)
    {
        <ul>
            <a href=@onderwerp.Url> @onderwerp.Translated.OnderwerpNaam </a>
        </ul>
    }

</section>')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (26, 1392, N'ZoekenTemplate', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.Search>

@using NLappCMS.Models;
@using System.Threading;
@using NLappCMS.CustomExtensions

@{
    
    Layout = "MasterNLapp.cshtml";

    var q = Request.QueryString["q"];
    IEnumerable<Examine.SearchResult> searchResults = null;

    Func<IPublishedContent, InfoPaginaNL> ToInfoPaginaNl = c => ((InfoPaginaNL)c);

    if (!string.IsNullOrEmpty(q))
    {
        searchResults = new SearchHelper().Search(q, "NlappExternalSearcher");
    }
}

@section BodyClass {
    class="searchresults"
}

<div class="wrapper">

    @Html.Raw(System.IO.File.ReadAllText(Server.MapPath("~/img/header_light.svg")))
    @Html.Raw(System.IO.File.ReadAllText(Server.MapPath("~/img/header_dark.svg")))

    <header role="banner">
        <a class="back" href="/" aria-label="@Umbraco.GetDictionaryValue("TerugNaarHome")">@Umbraco.GetDictionaryValue("Terug")</a>

        <span title="@Umbraco.GetDictionaryValue("ZoekResultaten")" class="category"
              role="heading" aria-label="@Umbraco.GetDictionaryValue("ZoekResultaten")">
            @Umbraco.GetDictionaryValue("ZoekResultaten")
        </span>

        @Html.Partial("SearchForm", Umbraco.UmbracoContext)
    </header>

    <main role="main">
        <div class="content" role="navigation" aria-label="@Umbraco.GetDictionaryValue("ZoekResultaten")">

            <h1>@Umbraco.GetDictionaryValue("GezochtOp"): "@q.ToUpper()"</h1>
            <div class="results" role="list">
                <ul>

                    @if (searchResults != null && searchResults.Any())
                    {
                        foreach (var item in searchResults)
                        {
                            var content = Umbraco.TypedContent(item.Fields["id"]);
                            if (content != null)
                            {
                                <li class="result" role="listitem">
                                    @{
                                        string resultTitel = string.Empty;
                                        IHtmlString resultContent = new HtmlString(string.Empty);
                                        string resultCategorie = string.Empty;
                                        string resultCategorieNaam = string.Empty;

                                        switch (content.ContentType.Alias.ToLower())
                                        {
                                            case DocumentTypes.InfoPagina:
                                                {
                                                    InfoPagina resultModel = (InfoPagina)content;
                                                    resultTitel = resultModel.Translated.Titel;
                                                    resultContent = resultModel.Translated.Omschrijving;
                                                    resultCategorie = content.Parent.Parent.Name;
                                                    resultCategorieNaam = new Categorie(content.Parent.Parent).Translated.CategorieNaam;
                                                    break;
                                                }
                                            case DocumentTypes.InfoPaginaNl:
                                                {
                                                    InfoPaginaNL resultModel = (InfoPaginaNL)content;
                                                    resultTitel = resultModel.Translated.Titel;
                                                    resultContent = resultModel.Translated.Omschrijving;
                                                    resultCategorie = content.Parent.Parent.Name;
                                                    resultCategorieNaam = new Categorie(content.Parent.Parent).Translated.CategorieNaam;
                                                    break;
                                                }
                                            case DocumentTypes.Onderwerp:
                                                {
                                                    Onderwerp resultModel = (Onderwerp)content;
                                                    resultTitel = resultModel.Translated.OnderwerpNaam;
                                                    resultContent = resultModel.Translated.Omschrijving;
                                                    resultCategorie = content.Parent.Name;
                                                    resultCategorieNaam = new Categorie(content.Parent).Translated.CategorieNaam;
                                                    break;
                                                }
                                            case DocumentTypes.InfoPaginaLinkNl:
                                                {
                                                    InfoPaginaNL resultmodel = ToInfoPaginaNl(ToInfoPaginaNl(((InfoPaginaLinkNL)content).InhoudKiezer.FirstOrDefault()));
                                                    resultTitel = resultmodel.Translated.Titel;
                                                    resultContent = resultmodel.Translated.Omschrijving;
                                                    resultCategorie = content.Parent.Parent.Name;
                                                    resultCategorieNaam = new Categorie(content.Parent.Parent).Translated.CategorieNaam;
                                                    break;
                                                }
                                            default:
                                                {
                                                    Categorie resultModel = (Categorie)content;
                                                    resultTitel = resultModel.Translated.CategorieNaam;
                                                    resultCategorie = content.Name;
                                                    resultCategorieNaam = resultModel.Translated.CategorieNaam;
                                                    break;
                                                }
                                        }

                                        <a class="internal @resultCategorie.ToLower()" href="@content.Url" target="_self">
                                            <h2>@resultTitel</h2>
                                            <div class="result-content">@resultContent</div>
                                            <div class="cat @resultCategorie.ToLower()">@resultCategorieNaam</div>
                                        </a>
                                    }
                                </li>
                            }
                        }
                    }
                    else
                    {
                        <li>@Umbraco.GetDictionaryValue("NietsGevonden")</li>
                    }
                </ul>
            </div>

            <div class="up" aria-hidden="true"></div>
        </div>
    </main>
</div>

@section Scripts {
    <script type="text/javascript">

        $(document).ready(function () {
            window.nlapp.zoeken.init();
        });

        $(window).on("load", function () {
            window.nlapp.zoeken.load();
        });
    </script>
}
')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (29, 1399, N'KaartPagina', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.KaartPagina>

@{
    Layout = "MasterNLapp.cshtml";
}

@Html.Partial("KaartContent");
')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (30, 1411, N'HTML404', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage<NLappCMS.Models.Html_404>

@using ContentModels = NLappCMS.Models;

@{
    Layout = "MasterNLapp.cshtml";
    ContentModels.Welkom root = Model.Content.Site() as ContentModels.Welkom;
}

@section BodyClass {
    class="list htmlerror"
}

<div class="wrapper">

    @Html.Raw(System.IO.File.ReadAllText(Server.MapPath("~/img/header_light.svg")))
    @Html.Raw(System.IO.File.ReadAllText(Server.MapPath("~/img/header_dark.svg")))

    <header role="banner">
        <a class="back" href="/" aria-label="@Umbraco.GetDictionaryValue("TerugNaarHome")">@Umbraco.GetDictionaryValue("Terug")</a>

        <span title="Categorie" class="category" role="heading" aria-label="@Umbraco.GetDictionaryValue("PaginaNietAanwezig")">
            @root.Sitename
        </span>

        @Html.Partial("SearchForm", Umbraco.UmbracoContext)
    </header>

    <main role="main">
        <div class="error-info">
            <h1>@Model.Content.Translated.Titel</h1>
            <p>@Model.Content.Translated.Omschrijving</p>
            <span class="url">@this.Request.Url</span>
            <p class="homeurl">
                <a href="/">@Umbraco.GetDictionaryValue("TerugNaarHome")</a>
            </p>
        </div>
    </main>
</div>

@section Scripts {
    <script type="text/javascript">

        $(document).ready(function () {
            window.nlapp.html404.init();
        });

        $(window).on("load", function () {
            window.nlapp.html404.load();
        });
    </script>
}
')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (31, 1412, N'XMLSitemap', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage

@using ContentModels = NLappCMS.Models;

@{
    Layout = null;
    Response.AddHeader("Content-Type", "text/xml");
    IPublishedContent homePage = Model.Content.Site();
    const string DATE_TIME_FORMAT = "yyyy-MM-ddTHH:mm:sszzz";
}

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
        xmlns:video="http://www.google.com/schemas/sitemap-video/1.1">
    <url><loc>@homePage.UrlWithDomain()</loc><priority>1.0</priority><lastmod>@homePage.UpdateDate.ToString(DATE_TIME_FORMAT)</lastmod></url>
    @RenderChildPages(homePage.Children, DATE_TIME_FORMAT)
</urlset>

@helper RenderChildPages(IEnumerable<IPublishedContent>
    pages, string dateTimeFormat)
{
    if (pages.Any())
    {
        foreach (IPublishedContent item in pages.Where(x => x.IsVisible()))
        {
            if (!(item.HasValue("excludeFromSitemap") && (bool)item.GetPropertyValue("excludeFromSitemap")))
            {
                <url><loc>@item.UrlWithDomain()</loc><lastmod>@item.UpdateDate.ToString(dateTimeFormat)</lastmod></url>
                if (item.Children.Any(x => x.IsVisible()))
                {
                    @RenderChildPages(item.Children, dateTimeFormat)
                }
            }
        }
    }
}
')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (32, 1442, N'Manifest', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@using Newtonsoft.Json;
@using Newtonsoft.Json.Serialization
@using NLappCMS.Models;
@{
    Layout = null;
    Response.AddHeader("Content-Type", "application/json");

    var requestPathParts = Request.Url.PathAndQuery.Split(''/'');
    var reqPath = string.Join("/", requestPathParts.Take(Math.Min(3, requestPathParts.Length - 1)));

    Func<string, object> getManifest = (startUrl) =>
    {
        var manifest = new PwaManifest
        {
            BackgroundColor = "#ffffff",
            Display = "standalone",
            Name = "NL App",
            Orientation = "portrait",
            ShortName = "NLApp",
            StartUrl = startUrl,
            ThemeColor = "#1565C0"
        };

        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-72x72.png",     "72x72", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-96x96.png",     "96x96", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-128x128.png", "128x128", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-144x144.png", "144x144", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-152x152.png", "152x152", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-192x192.png", "192x192", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-384x384.png", "384x384", "image/png"));
        manifest.Icons.Add(new PwaManifestIcon("../../icons/icon-512x512.png", "512x512", "image/png"));

        return manifest;
    };
}
@Html.Raw(JsonConvert.SerializeObject(getManifest(reqPath), Formatting.None, new JsonSerializerSettings()
{
    ContractResolver = new DefaultContractResolver { NamingStrategy = new SnakeCaseNamingStrategy() }
}))
')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias], [design]) VALUES (33, 1443, N'ServiceWorkerFiles', N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@using Newtonsoft.Json;
@using NLappCMS.Models;
@{
    Layout = null;
    Response.AddHeader("Content-Type", "application/json");

    IPublishedContent rootPage = Model.Content.Site().Children<Home>().FirstOrDefault();

    var requestUrlBase = Request.Url.GetLeftPart(UriPartial.Authority);
    var requestPathParts = Request.Url.PathAndQuery.Split(''/'');
    var requestUrl = requestUrlBase + string.Join("/", requestPathParts.Take(requestPathParts.Length - 1));

    Func<string, string, string> formatUrl = (url, requestedUrl) =>
    {
        var uri = new Uri(url);
        var uriPathParts = uri.PathAndQuery.Split(''/'');

        url = requestedUrl;

        if (uriPathParts.Length > 3)
        {
            url = requestedUrl + "/" + string.Join("/", uriPathParts.Skip(3));
        }

        return url;
    };

    Func<IEnumerable<IPublishedContent>, string, IEnumerable<string>> getPageUrls = null;
    getPageUrls = (childPages, urlRequested) =>
    {
        var pageUrls = new List<string>();

        foreach (IPublishedContent item in childPages.Where(x => x.IsVisible()
                        && !x.DocumentTypeAlias.ToUpper().StartsWith("INFOPAGINA")
                        && !x.DocumentTypeAlias.ToUpper().Equals("SEARCH")))
        {
            if (item.HasValue("excludeFromSitemap") && (bool) item.GetPropertyValue("excludeFromSitemap"))
            {
                continue;
            }

            pageUrls.Add(formatUrl(item.UrlWithDomain(), urlRequested));

            if (item.Children.Any(x => x.IsVisible()))
            {
                pageUrls.AddRange(getPageUrls(item.Children, urlRequested));
            }
        }

        return pageUrls;
    };

    Func<List<string>> getImageUrls = () => new List<string>(new []
    {
        // imgs
        "/img/addtohome.svg",
        "/img/appinstalled.svg",
        "/img/arrowright.svg",
        "/img/back.svg",
        "/img/back_light.svg",
        "/img/check.svg",
        "/img/check_light.svg",
        "/img/close-focus.svg",
        "/img/close.svg",
        "/img/close_light.svg",
        "/img/done.svg",
        "/img/download.svg",
        "/img/forward.svg",
        "/img/forward_light.svg",
        "/img/header_dark.svg",
        "/img/header_light.svg",
        "/img/home.svg",
        "/img/lang.svg",
        "/img/lang_light.svg",
        "/img/left.svg",
        "/img/link.svg",
        "/img/logo.svg",
        "/img/menu-focus.svg",
        "/img/menu-light.svg",
        "/img/menu.svg",
        "/img/pdf.svg",
        "/img/place.svg",
        "/img/place_light.svg",
        "/img/readless.svg",
        "/img/readmore.svg",
        "/img/right-white.svg",
        "/img/right.svg",
        "/img/search.svg",
        "/img/search_light.svg",
        "/img/share.svg",
        "/img/up-focus.svg",
        "/img/up.svg",
        "/img/video.svg",
        // category imgs
        "/img/cat/geld.svg",
        "/img/cat/geld_home.svg",
        "/img/cat/gezondheid.svg",
        "/img/cat/gezondheid_home.svg",
        "/img/cat/integratie.svg",
        "/img/cat/integratie_home.svg",
        "/img/cat/juridisch.svg",
        "/img/cat/juridisch_home.svg",
        "/img/cat/leefomgeving.svg",
        "/img/cat/leefomgeving_home.svg",
        "/img/cat/werk.svg",
        "/img/cat/werk_home.svg",
    });

    Func<List<string>> getScriptAndStyleUrls = () => new List<string>(new []
    {
        "/scripts/jquery-3.3.1.min.js",
        "/scripts/nlapp.min.js",
        "/scripts/nlapp-bundle.js",
        "/css/nlapp.min.css",

        "/media/1001/logo-amsterdam.svg" // TODO: remove or add other cities?
    });

    Func<IEnumerable<string>, int> getHashCodeOfList = null;
    getHashCodeOfList = (list) =>
    {
        List<int> codes = new List<int>();
        foreach (string item in list)
        {
            codes.Add(item.GetHashCode());
        }

        codes.Sort();
        int hash = 0;
        foreach (int code in codes)
        {
            unchecked
            {
                hash *= 251; // multiply by a prime number
                hash += code; // add next hash code
            }
        }
        return hash;
    };

    Func<IEnumerable<IPublishedContent>, string, IEnumerable<string>> getPageUrlsWithHash = null;
    getPageUrlsWithHash = (childPages, urlRequested) =>
    {
        var result = getPageUrls(childPages, urlRequested).Distinct().ToList();
        result.AddRange(getImageUrls().Select(u => requestUrlBase + u));
        result.AddRange(getScriptAndStyleUrls().Select(u => requestUrlBase + u));

        int hashCode = getHashCodeOfList(result);

        result.Insert(0, hashCode.ToString());

        return result;
    };
}
@Html.Raw(JsonConvert.SerializeObject(getPageUrlsWithHash(rootPage.Children, requestUrl)))
')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
SET IDENTITY_INSERT [dbo].[umbracoAudit] ON 

INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2423, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T06:29:27.977' AS DateTime), 1, N'User "Demo User" <demo.user@wigo4it.nl>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2424, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T06:29:28.240' AS DateTime), 1, N'User "Demo User" <demo.user@wigo4it.nl>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2428, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T07:18:56.847' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2429, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T07:18:56.997' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2430, 0, N'User "Administrator" <default123@default.nl>', N'::1', CAST(N'2019-03-19T07:20:00.227' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2431, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T07:20:12.527' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2432, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T07:20:12.677' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2433, 0, N'User "Administrator" <default123@default.nl>', N'::1', CAST(N'2019-03-19T07:20:13.230' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2434, 0, N'User "Administrator" <default123@default.nl>', N'::1', CAST(N'2019-03-19T07:21:35.647' AS DateTime), -1, N'Member 1435 "Test_WigoMemebership" <default123@default.nl>', N'umbraco/member/delete', N'delete member id:1435 "Test_WigoMemebership" <default123@default.nl>')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2435, 0, N'User "Administrator" <default123@default.nl>', N'::1', CAST(N'2019-03-19T07:21:41.487' AS DateTime), -1, N'Member 1372 "TestMember" <default123@default.nl>', N'umbraco/member/delete', N'delete member id:1372 "TestMember" <default123@default.nl>')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2436, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T07:31:58.113' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2437, 0, N'User "SYSTEM" ', N'::1', CAST(N'2019-03-19T07:31:58.280' AS DateTime), 0, N'User "Administrator" <default123@default.nl>', N'umbraco/user/sign-in/login', N'login success')
SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4577, CAST(N'2019-03-18T16:03:01.193' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4578, CAST(N'2019-03-19T06:05:22.573' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4579, CAST(N'2019-03-19T06:06:01.023' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4580, CAST(N'2019-03-19T06:10:57.477' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4581, CAST(N'2019-03-19T06:15:17.960' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"UniqueId\":\"7f9fdc3c-5f6c-4836-8b31-7ae0ca129aab\",\"Id\":1438}]"}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4582, CAST(N'2019-03-19T06:17:31.787' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Path\":\"-1,1145,1146\",\"Id\":1146,\"Operation\":1},{\"Path\":\"-1,1145,1146,1147\",\"Id\":1147,\"Operation\":1},{\"Path\":\"-1,1145,1146,1148\",\"Id\":1148,\"Operation\":1},{\"Path\":\"-1,1145,1146,1147,1394\",\"Id\":1394,\"Operation\":1}]"}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4583, CAST(N'2019-03-19T06:17:42.260' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Path\":\"-1,1145,1353\",\"Id\":1353,\"Operation\":1},{\"Path\":\"-1,1145,1353,1354\",\"Id\":1354,\"Operation\":1},{\"Path\":\"-1,1145,1353,1355\",\"Id\":1355,\"Operation\":1}]"}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4584, CAST(N'2019-03-19T06:29:28.517' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4585, CAST(N'2019-03-19T06:31:10.690' AS DateTime), N'[{"RefreshType":3,"RefresherId":"55698352-dfc5-4dbe-96bd-a4a0f6f77145","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1487]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"27ab3022-3dfa-47b6-9119-5945bc88fd66","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1487]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4586, CAST(N'2019-03-19T06:31:28.287' AS DateTime), N'[{"RefreshType":3,"RefresherId":"55698352-dfc5-4dbe-96bd-a4a0f6f77145","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1487]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"27ab3022-3dfa-47b6-9119-5945bc88fd66","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1487]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4587, CAST(N'2019-03-19T06:33:54.270' AS DateTime), N'[{"RefreshType":3,"RefresherId":"27ab3022-3dfa-47b6-9119-5945bc88fd66","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1496]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4588, CAST(N'2019-03-19T06:34:36.750' AS DateTime), N'[{"RefreshType":3,"RefresherId":"55698352-dfc5-4dbe-96bd-a4a0f6f77145","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1487,1490,1496,1494]","JsonIdCount":4,"JsonPayload":null},{"RefreshType":3,"RefresherId":"27ab3022-3dfa-47b6-9119-5945bc88fd66","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1496,1494]","JsonIdCount":2,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 6)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4589, CAST(N'2019-03-19T06:38:09.653' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Path\":null,\"Id\":1121,\"Operation\":2},{\"Path\":null,\"Id\":1118,\"Operation\":2},{\"Path\":null,\"Id\":1394,\"Operation\":2},{\"Path\":null,\"Id\":1354,\"Operation\":2},{\"Path\":null,\"Id\":1119,\"Operation\":2},{\"Path\":null,\"Id\":1147,\"Operation\":2},{\"Path\":null,\"Id\":1148,\"Operation\":2},{\"Path\":null,\"Id\":1120,\"Operation\":2},{\"Path\":null,\"Id\":1355,\"Operation\":2},{\"Path\":null,\"Id\":1483,\"Operation\":2},{\"Path\":null,\"Id\":1486,\"Operation\":2},{\"Path\":null,\"Id\":1130,\"Operation\":2},{\"Path\":null,\"Id\":1131,\"Operation\":2},{\"Path\":null,\"Id\":1146,\"Operation\":2},{\"Path\":null,\"Id\":1132,\"Operation\":2},{\"Path\":null,\"Id\":1353,\"Operation\":2},{\"Path\":null,\"Id\":1133,\"Operation\":2},{\"Path\":null,\"Id\":1122,\"Operation\":2},{\"Path\":null,\"Id\":1123,\"Operation\":2},{\"Path\":null,\"Id\":1134,\"Operation\":2},{\"Path\":null,\"Id\":1124,\"Operation\":2},{\"Path\":null,\"Id\":1125,\"Operation\":2},{\"Path\":null,\"Id\":1126,\"Operation\":2},{\"Path\":null,\"Id\":1127,\"Operation\":2},{\"Path\":null,\"Id\":1128,\"Operation\":2},{\"Path\":null,\"Id\":1129,\"Operation\":2}]"}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4590, CAST(N'2019-03-19T06:52:11.083' AS DateTime), N'[{"RefreshType":5,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":6,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null},{"RefreshType":5,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":11,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null},{"RefreshType":5,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":7,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null},{"RefreshType":5,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":8,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null},{"RefreshType":5,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":10,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null},{"RefreshType":5,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":9,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 6)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4591, CAST(N'2019-03-19T06:52:43.133' AS DateTime), N'[{"RefreshType":3,"RefresherId":"45178038-b232-4fe8-aa1a-f2b949c44762","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[4]","JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4592, CAST(N'2019-03-19T07:21:35.890' AS DateTime), N'[{"RefreshType":5,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":1435,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4593, CAST(N'2019-03-19T07:21:41.593' AS DateTime), N'[{"RefreshType":5,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":1372,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4594, CAST(N'2019-03-19T07:22:07.637' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Alias\":\"wigo_TestMemberType\",\"Id\":1434,\"PropertyTypeIds\":[490,491,492,493,494,495,496,497,498],\"Type\":\"IMemberType\",\"AliasChanged\":false,\"PropertyRemoved\":false,\"PropertyTypeAliasChanged\":false,\"DescendantPayloads\":[],\"WasDeleted\":true,\"IsNew\":false}]"}]', N'O9446DEVVDI106//LM/W3SVC/2/ROOT [P8080/D2] 5B24DE6B709B4D0FB238926DCD4E2408', 1)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
SET IDENTITY_INSERT [dbo].[umbracoDomains] ON 

INSERT [dbo].[umbracoDomains] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (2, 2, 1143, N'*1143')
INSERT [dbo].[umbracoDomains] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (40, 2, 1143, N'https://localhost:44396/nl-nl')
INSERT [dbo].[umbracoDomains] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (41, 1, 1143, N'https://localhost:44396/en-us')
INSERT [dbo].[umbracoDomains] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (42, 3, 1143, N'https://localhost:44396/ar-sy')
INSERT [dbo].[umbracoDomains] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (46, 4, 1143, N'https://localhost:44396/ti-er')
SET IDENTITY_INSERT [dbo].[umbracoDomains] OFF
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (1, N'en-US', N'en-US')
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (2, N'nl-NL', N'Dutch (Netherlands)')
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (3, N'ar-SY', N'Arabic (Syria)')
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName]) VALUES (4, N'ti-ER', N'Tigrinya (Eritrea)')
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
SET IDENTITY_INSERT [dbo].[umbracoLock] ON 

INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-331, -1, N'Servers')
SET IDENTITY_INSERT [dbo].[umbracoLock] OFF
SET IDENTITY_INSERT [dbo].[umbracoMigration] ON 

INSERT [dbo].[umbracoMigration] ([id], [name], [createDate], [version]) VALUES (1, N'Umbraco', CAST(N'2018-04-05T17:22:58.063' AS DateTime), N'7.10.0')
SET IDENTITY_INSERT [dbo].[umbracoMigration] OFF
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-97, 0, 1343, 0, 2, N'-1,1343,-97', 3, N'aa2c52a0-ce87-4e65-a47c-7df09358585d', N'List View - Members', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.780' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-96, 0, 1343, 0, 2, N'-1,1343,-96', 2, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.773' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-95, 0, 1343, 0, 2, N'-1,1343,-95', 1, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.763' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-92, 0, -1, 0, 1, N'-1,-92', 35, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', N'Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.640' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-90, 0, -1, 0, 1, N'-1,-90', 34, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.650' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-89, 0, -1, 0, 1, N'-1,-89', 33, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.660' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-88, 0, -1, 0, 1, N'-1,-88', 32, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.667' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-87, 0, -1, 0, 1, N'-1,-87', 4, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.677' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-51, 0, -1, 0, 1, N'-1,-51', 2, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-49, 0, -1, 0, 1, N'-1,-49', 2, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.693' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-43, 0, -1, 0, 1, N'-1,-43', 2, N'fbaf13a8-4036-41f2-93a3-974f678c312a', N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.703' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-42, 0, -1, 0, 1, N'-1,-42', 2, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.713' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-41, 0, -1, 0, 1, N'-1,-41', 2, N'5046194e-4237-453c-a547-15db3a07c4e1', N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.720' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-40, 0, -1, 0, 1, N'-1,-40', 2, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.730' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-39, 0, -1, 0, 1, N'-1,-39', 2, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.737' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-37, 0, -1, 0, 1, N'-1,-37', 2, N'0225af17-b302-49cb-9176-b9f35cab9c17', N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.747' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-36, 0, -1, 0, 1, N'-1,-36', 2, N'e4d66c0f-b935-4200-81f0-025f7256b89a', N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.753' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-21, 0, -1, 0, 0, N'-1,-21', 0, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(N'2018-04-05T17:22:47.633' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-20, 0, -1, 0, 0, N'-1,-20', 0, N'0f582a79-1e41-4cf0-bfa0-76340651891a', N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(N'2018-04-05T17:22:47.623' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (-1, 0, -1, 0, 0, N'-1', 0, N'916724a5-173d-4619-b97e-b9de133dd6f5', N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(N'2018-04-05T17:22:47.567' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1031, 0, -1, 0, 1, N'-1,1031', 2, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2018-04-05T17:22:47.790' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1032, 0, -1, 0, 1, N'-1,1032', 3, N'cc07b313-0843-4aa8-bbda-871c8da728c8', N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2018-04-05T17:22:47.800' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1033, 0, -1, 0, 1, N'-1,1033', 4, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2018-04-05T17:22:47.807' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1041, 0, -1, 0, 1, N'-1,1041', 2, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.817' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1043, 0, -1, 0, 1, N'-1,1043', 2, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.827' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1044, 0, -1, 0, 1, N'-1,1044', 0, N'd59be02f-1df9-4228-aa1e-01917d806cda', N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2018-04-05T17:22:47.833' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1046, 0, -1, 0, 1, N'-1,1046', 2, N'fd1e0da5-5606-4862-b679-5d0cf3a52a59', N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.843' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1047, 0, -1, 0, 1, N'-1,1047', 2, N'1ea2e01f-ebd8-4ce1-8d71-6b1149e63548', N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.850' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1048, 0, -1, 0, 1, N'-1,1048', 2, N'135d60e0-64d9-49ed-ab08-893c9ba44ae5', N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.860' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1049, 0, -1, 0, 1, N'-1,1049', 2, N'9dbbcbbb-2327-434a-b355-af1b84e5010a', N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.870' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1050, 0, -1, 0, 1, N'-1,1050', 2, N'b4e3535a-1753-47e2-8568-602cf8cfee6f', N'Related Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:22:47.880' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1079, 0, -1, 0, 1, N'-1,1079', 42, N'ca547f1f-e30a-420a-8e3b-81b661cf0f49', N'List View - products', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-05T17:23:28.210' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1081, 0, -1, 0, 1, N'-1,1081', 0, N'42276ec7-25f0-48cf-b5f9-d067f66b72d0', N'Compositions', N'2f7a2769-6b0b-4468-90dd-af42d64f7f16', CAST(N'2018-04-05T17:23:33.310' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1082, 0, 1081, 0, 2, N'-1,1081,1082', 0, N'07a33c7d-7815-40d8-8b3c-7e89d94f1f67', N'Content Base', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-05T17:23:36.503' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1083, 0, 1081, 0, 2, N'-1,1081,1083', 1, N'f0889431-f888-4f33-829d-746a003a0812', N'Feature', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-05T17:23:36.800' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1085, 0, 1081, 0, 2, N'-1,1081,1085', 43, N'aa149bbf-ba87-4fc0-9d8f-7314d45e6e56', N'Navigation Base', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-05T17:23:37.720' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1136, 0, -1, 0, 1, N'-1,1136', 44, N'f0ca2ebe-9661-4e61-bbcd-f330958bd8fa', N'Video - Url - File upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-06T12:39:18.047' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1138, 0, -1, NULL, 1, N'-1,1138', 0, N'49ea48f2-af7e-4e18-af85-87b6b2efe9ac', N'Master', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-06T14:57:02.840' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1139, 0, 1138, NULL, 1, N'-1,1138,1139', 0, N'a7e4d8bb-0efa-4e0a-86a7-aa02f9066963', N'Welkom', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-06T15:05:08.513' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1140, 0, 1138, NULL, 1, N'-1,1138,1140', 0, N'a3e32e43-3da8-46e0-8e4e-f381a4dd96f0', N'Home', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-06T15:05:44.670' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1141, 0, -1, 0, 1, N'-1,1141', 195, N'81c25293-e6a0-4002-82c2-013fdb571e10', N'Home', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-06T15:06:58.793' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1142, 0, -1, 0, 1, N'-1,1142', 190, N'8840e01d-5f81-4171-94fb-8452927bd782', N'Welkom', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-06T15:12:49.183' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1143, 0, -1, 0, 1, N'-1,1143', 1, N'96393366-e870-4e62-a313-74b0c664d32e', N'NLapp Default', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2018-04-06T15:17:49.217' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1145, 0, -1, 0, 1, N'-1,1145', 3, N'c756de3c-470d-4c28-8cb9-467189e7a403', N'Media', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2018-04-06T16:51:59.123' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1150, 0, 1138, NULL, 1, N'-1,1138,1150', 0, N'e13a33be-6523-43c5-9310-f6c7a17a5b4b', N'Categorie', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-09T12:31:32.007' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1151, 0, -1, 0, 1, N'-1,1151', 228, N'8ecf8137-6c71-4c43-8f67-4f454bff2083', N'Categorie', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-09T12:31:32.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1152, 0, 1081, 0, 2, N'-1,1081,1152', 41, N'f214a851-7ccf-4f67-a2be-ba19ced78fc7', N'SEO Base', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-09T12:42:43.580' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1153, 0, -1, 0, 1, N'-1,1153', 232, N'5119de6f-aaf1-4c5f-8445-054c0f6965e8', N'Onderwerp', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-09T12:45:09.887' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1154, 0, -1, 0, 1, N'-1,1154', 45, N'b1ed98aa-8efb-4960-aaf5-552dad2cb4f9', N'InfoPagina - Titel - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T12:47:00.347' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1155, 0, -1, 0, 1, N'-1,1155', 46, N'631c7bb2-44f0-44d5-a468-037ae72f3bae', N'InfoPagina - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T12:49:29.010' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1156, 0, -1, 0, 1, N'-1,1156', 47, N'2d6b4d9a-6db5-4031-a25f-2250bf5a6e52', N'InfoPagina - Textbox - Titel', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T12:51:52.427' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1157, 0, 1138, NULL, 1, N'-1,1138,1157', 0, N'3b5cbe7d-89a6-4577-bb1d-0bbbba6f0d23', N'InfoPagina', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-09T12:53:25.807' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1158, 0, -1, 0, 1, N'-1,1158', 233, N'd3c5773d-58da-47d0-8b70-fdf3ccc1fdcf', N'InfoPagina', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-09T12:53:26.450' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1162, 0, -1, 0, 1, N'-1,1162', 48, N'f15265b7-4b93-4a89-85f4-757dff17015a', N'InfoPagina - Omschrijving - Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T16:09:29.690' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1166, 0, -1, 0, 1, N'-1,1166', 49, N'329438b4-afbc-4f7c-8382-6fef7205bb81', N'[Unused] InfoPagina_VortoExample - VortoTitel -  Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T16:36:15.490' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1167, 0, -1, 0, 1, N'-1,1167', 50, N'22fd9d80-420b-46d6-8076-64a407a3ac3d', N'InfoPagina_VortoExample - VortoTitel - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T16:42:02.510' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1168, 0, -1, 0, 1, N'-1,1168', 51, N'db74915e-d607-435e-b827-916dea442720', N'InfoPagina_VortoExample - VortoOmschrijving - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T16:48:33.900' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1169, 0, 1081, 0, 2, N'-1,1081,1169', 16, N'0204053c-c4d6-41e7-94aa-708ebebda8fc', N'Categorie Content', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-09T17:20:23.760' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1171, 0, -1, 0, 1, N'-1,1171', 53, N'b796b5b8-7e4d-4919-935a-6ed2def9aa0b', N'Nested_CategorieContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-09T17:24:36.557' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1172, 0, -1, 0, 1, N'-1,1172', 54, N'7173f829-96db-4399-b040-6663ec5e5ae0', N'Categorie Content - Categorie naam - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T07:22:53.460' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1173, 0, 1081, 0, 2, N'-1,1081,1173', 29, N'c270edba-26eb-4cd2-9e64-bc0050f6c790', N'Onderwerp Content', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-10T07:27:43.500' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1174, 0, -1, 0, 1, N'-1,1174', 55, N'9e718155-08e1-4530-b3b3-13c5fe13e475', N'Textbox_50', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T07:31:08.600' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1175, 0, -1, 0, 1, N'-1,1175', 56, N'2ac61271-194e-4bcc-ab84-169e57e6b682', N'Onderwerp Content - Onderwerp naam - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T07:35:56.057' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1176, 0, -1, 0, 1, N'-1,1176', 56, N'44574f6f-53bf-4f20-88b0-6a58eecb0c8b', N'Nested_InfoPagina', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T07:54:45.657' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1177, 0, -1, 0, 1, N'-1,1177', 57, N'ecf2c397-191d-4a20-9a5a-e1e0347f0900', N'InfoPagina - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T07:57:40.997' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1180, 0, -1, 0, 1, N'-1,1180', 58, N'95ab27ca-3772-4b61-9e91-2926c0848311', N'Nested_OnderwerpContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T08:46:23.823' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1181, 0, -1, 0, 1, N'-1,1181', 59, N'35d15b1d-2202-4653-83e1-a7794c017b33', N'Vorto_CategorieContent_Oud', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T09:20:39.957' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1182, 0, -1, 0, 1, N'-1,1182', 41, N'4cc06f56-6b7f-41f2-adfc-03bb3cb95d1d', N'Vorto_OnderwerpContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T10:12:56.083' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1183, 0, -1, 0, 1, N'-1,1183', 42, N'97578f6d-c2be-4a4c-a773-9388e65baa9d', N'Vorto_OnderwerpContent (1)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T10:12:58.397' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1184, 0, -1, 0, 1, N'-1,1184', 43, N'f2d3fb8a-7df6-405a-802d-930504b747e1', N'Info Pagina Content - Omschrijving - Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T10:15:59.317' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1186, 0, 1081, 0, 2, N'-1,1081,1186', 48, N'b0b6ff0c-de7e-450f-a106-4410bec8c74c', N'InfoPagina Content', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-10T10:16:14.523' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1187, 0, -1, 0, 1, N'-1,1187', 44, N'50e75ced-0a10-4359-bcb3-908234b8ef57', N'Vorto_InfoPaginaContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T10:19:41.270' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1191, 0, -1, 0, 1, N'-1,1191', 45, N'dbce782d-3425-4280-94ef-c38391f048d2', N'SEO and Navigation Base - Description - Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T12:37:31.987' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1192, 0, -1, 0, 1, N'-1,1192', 46, N'8fb0af29-4501-446e-895c-88722c649d45', N'SEO and Navigation Base - Description - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T12:38:32.547' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1193, 0, -1, 0, 1, N'-1,1193', 47, N'e5ee020f-3d0c-4133-b59b-f989b65171f8', N'SEO and Navigation Base - Keywords - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T12:40:12.853' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1194, 0, -1, 0, 1, N'-1,1194', 48, N'98025aec-bd9b-479d-abc3-55d5634795a8', N'SEO Base - Description - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T12:41:02.637' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1195, 0, -1, 0, 1, N'-1,1195', 49, N'c40a9c6d-363d-49c9-9d88-8eea401703d8', N'SEO Base - Keywords - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-10T12:41:22.433' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1197, 0, -1, 0, 1, N'-1,1197', 50, N'9fc83b45-56a5-4609-97fb-e6dece6c9ebb', N'InfoPagina - Titel - Vorto Text50', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-11T07:35:17.670' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1198, 0, -1, 0, 1, N'-1,1198', 51, N'ca9ad59e-c030-41ae-aaf3-58ca325ab5d5', N'[Unused] InfoPagina - Omschrijving - Vorto Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-11T07:36:06.703' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1205, 0, -1, 0, 1, N'-1,1205', 52, N'74054186-9af0-4e65-95de-cb25082b332f', N'Vorto_CategorieContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-11T10:34:43.017' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1241, 0, -1, 0, 1, N'-1,1241', 54, N'3b3582d1-b13d-43c8-8778-3d3dd981e722', N'InfoPagina_MultinodeTreepicker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-11T15:51:16.787' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1318, 0, -1, 0, 1, N'-1,1318', 55, N'4408ff7d-a12a-4d47-881a-71468407a1ff', N'InfoPaginaNL', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-12T09:58:57.370' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1321, 0, -1, 0, 1, N'-1,1321', 181, N'd35e53c7-2aaa-4c24-82c9-e96cfe9977b7', N'ContentHolder', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-12T10:15:16.153' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1324, 0, 1138, NULL, 1, N'-1,1138,1324', 0, N'01db4977-68fa-441f-9b89-2f842733da9b', N'InfoPagina Link', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-12T10:31:24.187' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1325, 0, -1, 0, 1, N'-1,1325', 154, N'a99302b4-b664-45f8-8777-8005f222660b', N'InfoPagina Link', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-12T10:31:24.287' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1329, 0, -1, 0, 1, N'-1,1329', 137, N'2ba5be59-caab-4593-ae69-32277c324758', N'InfoPagina Link NL', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-12T15:36:41.543' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1330, 0, -1, 0, 1, N'-1,1330', 56, N'37603858-04a0-48a7-87fe-31fd9c98d5bf', N'InfoPagina_ContentPointer', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-12T15:50:18.203' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1332, 0, 1138, NULL, 1, N'-1,1138,1332', 0, N'fdc7245e-d81a-43f4-8868-9176519ff102', N'InfoPagina Link NL', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-12T16:28:30.153' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1335, 0, -1, 0, 1, N'-1,1335', 186, N'cf4998c6-4b28-4290-ba9b-847bf250a9de', N'InfoPaginaNL', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-12T22:30:38.253' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1336, 0, 1138, NULL, 1, N'-1,1138,1336', 0, N'e3f504c8-c8f4-47cc-9bb3-6d7b77c21251', N'InfoPaginaNL', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-12T22:32:17.513' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1342, 0, -1, 0, 1, N'-1,1342', 57, N'4d35d42d-8671-492a-8ab5-12779429cbac', N'Home - Gemeentenaam - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-16T16:10:11.907' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1343, 0, -1, 0, 1, N'-1,1343', 0, N'059837c2-5ba0-4ce3-95f5-c039dca42e3e', N'Defaults', N'521231e3-8b37-469c-9f9d-51afc91feb7b', CAST(N'2018-04-18T15:26:36.110' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1345, 0, -1, 0, 1, N'-1,1345', 57, N'd7be1d9e-bd18-4b9d-86c3-efbffff5021c', N'tmp', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-18T15:28:33.597' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1347, 0, 1138, NULL, 1, N'-1,1138,1347', 0, N'b275bcc5-ef5e-4b21-b81d-844dadfaaf25', N'Onderwerp', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-04-19T12:37:17.367' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1349, 0, -1, 0, 1, N'-1,1349', 194, N'157da0c6-6b9c-4fe7-a4c1-acc3aa659fa1', N'Search', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-04-22T21:31:04.940' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1352, 0, -1, 0, 1, N'-1,1352', 55, N'1a6a6f2f-ba2c-4e16-a28a-ed4e55462c2a', N'Onderwerp Content - Omschrijving - Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-04-30T08:54:38.667' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1356, 0, 1145, 0, 2, N'-1,1145,1356', 2, N'c47d5efc-e4b0-4a9c-8a0d-f4c02f431f91', N'NL', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2018-05-01T16:03:11.293' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1357, 0, 1356, 0, 3, N'-1,1145,1356,1357', 0, N'35a42b71-a275-422c-a6f5-9b4ecdc5ddb8', N'Afbeeldingen', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2018-05-01T16:03:57.980' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1358, 0, 1356, 0, 3, N'-1,1145,1356,1358', 1, N'd9070190-66cc-4150-a069-6a6d1c92f39a', N'Videos', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2018-05-01T16:04:17.573' AS DateTime))
GO
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1361, 0, -1, 0, 1, N'-1,1361', 58, N'eeea39e6-cca8-41e6-b5ad-2d6971f9fd2a', N'External Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-05-03T09:55:44.323' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1364, 0, -1, 0, 1, N'-1,1364', 57, N'ecd3e3da-b7e6-458c-b06f-fe47c6c21029', N'InfoPagina Content - Links - External Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-05-03T23:52:03.883' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1366, 0, -1, 0, 1, N'-1,1366', 58, N'0ae4bf0f-7d12-42bd-8501-b55889168dd1', N'Home - Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-05-09T10:30:21.830' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1367, 0, -1, 0, 1, N'-1,1367', 59, N'778ad542-86f3-4fbc-a8f9-48647f8692e7', N'Home - Splash locatie Y - Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-05-09T10:32:20.713' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1369, 0, -1, 0, 1, N'-1,1369', 180, N'd30b658d-fe10-4be8-aefa-c19bc8dcfa89', N'DevTestDocTypeWeerTerug', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-05-09T13:34:58.220' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1370, 0, -1, 0, 1, N'-1,1370', 60, N'71da299c-e64b-4ed8-95a3-2f3902e7d57f', N'DevTestDocType - Date', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-05-09T13:36:54.787' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1373, 0, -1, 0, 1, N'-1,1373', 61, N'd2197c68-3447-4d94-b644-81890297fb35', N'testMemberType - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-05-18T12:48:11.780' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1379, 0, -1, 0, 1, N'-1,1379', 62, N'ca461e05-504e-4926-b495-47281c365457', N'Privacy Content - Cookie policy - Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-15T08:37:15.650' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1380, 0, -1, 0, 1, N'-1,1380', 63, N'd9c92a91-9776-4929-b677-26ea8dedb542', N'Privacy Content - Disclaimer - Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-15T08:38:10.690' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1381, 0, 1081, 0, 2, N'-1,1081,1381', 7, N'b403e673-0ded-4746-8878-0d4945eeb60c', N'Privacy Content', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-06-15T08:38:18.957' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1382, 0, -1, 0, 1, N'-1,1382', 64, N'33be672d-758d-49b5-98b1-0b2fa282d133', N'Nested_PrivacyContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-15T08:42:36.567' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1383, 0, -1, 0, 1, N'-1,1383', 65, N'e0d97c5e-fa53-4dfa-aadc-5ca982ec2ea8', N'Vorto_PrivacyContent', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-15T08:46:20.760' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1392, 0, 1138, NULL, 1, N'-1,1138,1392', 0, N'4b5cb472-e2ac-4cdd-9cd1-d5dcf0b95a5b', N'Zoeken', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-06-21T12:37:31.157' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1395, 0, -1, 0, 1, N'-1,1395', 66, N'a7dbfb8b-a8a9-41db-817b-b8748b564ee8', N'Home - Logo - Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-25T10:19:08.637' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1399, 0, 1138, NULL, 1, N'-1,1138,1399', 0, N'b150578f-c360-44dc-b21a-5a6167bfa4ab', N'KaartPagina', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-06-25T11:28:33.553' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1400, 0, -1, 0, 1, N'-1,1400', 212, N'2f5537e2-6141-4d99-b46c-6fa862295e51', N'KaartPagina', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-06-25T11:28:33.907' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1402, 0, -1, 0, 1, N'-1,1402', 68, N'd6f5835f-de83-4a23-8629-c3954a35a5a6', N'KaartPagina - Url - External Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-25T11:46:09.207' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1404, 0, -1, 0, 1, N'-1,1404', 68, N'af7ff5f0-6d2c-452d-8c19-743bee833dd9', N'KaartPagina - Titel - Vorto', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-25T12:05:06.917' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1406, 0, -1, 0, 1, N'-1,1406', 69, N'1d85bd98-8e8b-4db5-9cfd-d491d54fef88', N'KaartPagina - Kaart - Map Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-26T10:21:09.363' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1407, 0, -1, 0, 1, N'-1,1407', 70, N'30c73488-9a0b-441a-b8d4-4bfb033040db', N'KaartPagina - KaartUrl - Map Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-26T10:24:26.897' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1408, 0, -1, 0, 1, N'-1,1408', 71, N'327c9659-962e-41fb-adf3-8e007225daa8', N'KaartPagina - test1 - Map Links', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-06-26T10:30:47.910' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1411, 0, 1138, NULL, 1, N'-1,1138,1411', 0, N'2dd83656-2de5-4882-82ee-bd470a012df9', N'HTML 404', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-07-10T07:22:14.727' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1412, 0, -1, NULL, 1, N'-1,1412', 0, N'b90cf641-9b4c-432b-a798-f844b773516f', N'XMLSitemap', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-07-10T07:22:16.417' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1413, 0, -1, 0, 1, N'-1,1413', 12, N'cbfb1b94-f829-4864-b3df-110b206f9f03', N'Html 404', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-07-10T07:22:17.480' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1414, 0, -1, 0, 1, N'-1,1414', 13, N'51f49696-43f6-46c3-8a22-b9f7ca88125e', N'XMLSitemap', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-07-10T07:22:21.780' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1415, 0, -1, 0, 1, N'-1,1415', 72, N'40502cd2-71d9-4fef-a89e-d63483b0412b', N'Welkom - Subtitel - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-07-13T12:12:35.483' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1437, 0, -1, 0, 1, N'-1,1437', 73, N'251fc008-e526-402d-b229-64c383b79b28', N'InfoPagina - Label', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-09-11T13:57:31.713' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1438, 0, -1, 0, 1, N'-1,1438', 74, N'7f9fdc3c-5f6c-4836-8b31-7ae0ca129aab', N'ExterneBron Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-09-11T13:58:54.830' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1439, 0, -1, 0, 1, N'-1,1439', 75, N'd69bddd4-b32c-4479-b8e2-ffeb2aeb87e5', N'ExterneBronUrl - Textbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2018-09-12T05:10:02.200' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1442, 0, -1, NULL, 1, N'-1,1442', 0, N'383dfbc9-6ece-4bcd-9ace-22bc2b7e7cee', N'Manifest', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-10-09T15:17:29.627' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1443, 0, -1, NULL, 1, N'-1,1443', 0, N'1fb42ac8-eb18-4f52-b44a-ad9c057b9045', N'ServiceWorkerFiles', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2018-10-09T15:17:30.733' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1444, 0, -1, 0, 1, N'-1,1444', 14, N'1a8829b8-f358-4522-8d11-c795b82e8c0f', N'Manifest', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-10-09T15:17:33.327' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1445, 0, -1, 0, 1, N'-1,1445', 15, N'9c4ea558-9d42-4c7f-8b4f-6e7e34526810', N'ServiceWorkerFiles', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2018-10-09T15:17:33.857' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1462, 0, 1143, 0, 2, N'-1,1143,1462', 8, N'729e8f5c-341f-4bc3-aad8-b268b20192e4', N'Html 404', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2018-11-08T15:38:57.123' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1481, 0, 1143, 0, 2, N'-1,1143,1481', 6, N'43855a93-76ad-4b6d-b374-7ded42e98979', N'Gemeente', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:10:51.887' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1482, 0, 1145, 0, 2, N'-1,1145,1482', 3, N'a26fa161-ad0b-4b24-ab8d-237e771880a7', N'Gemeente', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2019-03-14T14:12:36.307' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1484, 0, 1482, 0, 3, N'-1,1145,1482,1484', 1, N'8ace5fed-1bae-4843-9c3b-97ad207dde78', N'Afbeeldingen', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2019-03-14T14:13:21.913' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1485, 0, 1482, 0, 3, N'-1,1145,1482,1485', 2, N'b6cc4ca2-4560-4d3b-b6cc-a65e5ea8bcf5', N'Videos', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2019-03-14T14:13:35.243' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1487, 0, 1481, 0, 3, N'-1,1143,1481,1487', 0, N'c3c412f0-0fb6-4e89-badc-0547c0f80f21', N'cat-1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:17:45.570' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1488, 0, 1487, 0, 4, N'-1,1143,1481,1487,1488', 0, N'448bb71b-6f5b-42ca-981c-60ef4823ddfa', N'onderwerp-1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:20:17.107' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1489, 0, 1488, 0, 5, N'-1,1143,1481,1487,1488,1489', 0, N'd28202e7-997c-42a1-8508-183369d5e4e4', N'informatiepagina-1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:21:12.147' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1490, 0, 1481, 0, 3, N'-1,1143,1481,1490', 1, N'df6e8ce4-5eca-4643-9fd0-0ee7b7a5c107', N'cat-2', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:35:44.707' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1492, 0, 1143, 0, 2, N'-1,1143,1492', 7, N'ec77487d-3d09-4d65-b961-b5d58dcf20c9', N'Gedeelde Inhoud', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:40:01.553' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1493, 0, 1492, 0, 3, N'-1,1143,1492,1493', 0, N'bdb57679-ee8e-4254-a18c-45812e67d444', N'GedeeldeInfoPagina-1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T14:46:03.987' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1494, 0, 1481, 0, 3, N'-1,1143,1481,1494', 3, N'442ff154-207c-4c4e-b54f-865846c5fdbb', N'search', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-14T15:05:53.377' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1495, 0, 1484, 0, 4, N'-1,1145,1482,1484,1495', 0, N'2fa55671-f5b2-439b-bfad-4207e0d1eaaf', N'LoremIpsumImagePlaceholder.png', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2019-03-14T15:50:59.290' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [trashed], [parentID], [nodeUser], [level], [path], [sortOrder], [uniqueID], [text], [nodeObjectType], [createDate]) VALUES (1496, 0, 1481, 0, 3, N'-1,1143,1481,1496', 2, N'f36ffde8-3804-49e4-a288-0aae6a37fccc', N'cat-3', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2019-03-19T07:33:52.360' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
INSERT [dbo].[umbracoRedirectUrl] ([id], [contentKey], [createDateUtc], [url], [urlHash]) VALUES (N'028c3b14-72a5-42cd-ab6f-acb60acea614', N'442ff154-207c-4c4e-b54f-865846c5fdbb', CAST(N'2019-03-14T15:08:56.997' AS DateTime), N'1143/gemeente/zoek', N'a74347ba238a9e45d91fa22bfd7066f25e39ad1c')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isMaster]) VALUES (61, N'https://localhost:44396/umbraco', N'O9446DEVVDI106//LM/W3SVC/2/ROOT', CAST(N'2019-03-14T07:47:43.987' AS DateTime), CAST(N'2019-03-19T08:39:17.480' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (0, 0, 0, N'Administrator', N'default123@default.nl', N'bqyW+5SpTLr2zZr+vlE3DA==JDdkz3BF3Rjdt7i5tDvVarxAL7MYmlljVWjzSOA4GtQ=', N'{"hashAlgorithm":"HMACSHA256"}', N'default123@default.nl', N'en-US', N'49bb0630-5f6c-4ab1-9c94-a7bda1132c80', 0, NULL, CAST(N'2018-04-05T17:23:02.697' AS DateTime), CAST(N'2019-03-19T08:31:57.887' AS DateTime), NULL, NULL, CAST(N'2018-04-05T17:22:55.787' AS DateTime), CAST(N'2019-03-19T08:31:58.040' AS DateTime), NULL, N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true}]')
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (0, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (0, 5)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON 

INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (1, N'admin', N'Administrators', N'ïFDCUR5HAIZ7PK4OMS', CAST(N'2018-04-05T17:22:58.567' AS DateTime), CAST(N'2018-05-01T15:34:25.733' AS DateTime), N'icon-medal', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (4, N'translator', N'Gemeente - Vertalers', N'FA4', CAST(N'2018-04-05T17:22:58.620' AS DateTime), CAST(N'2019-03-19T07:52:42.263' AS DateTime), N'icon-globe', NULL, NULL)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (5, N'sensitiveData', N'Sensitive data', N'ïRIZ7PK4OMS', CAST(N'2018-04-05T17:22:58.630' AS DateTime), CAST(N'2018-11-06T17:02:47.613' AS DateTime), N'icon-lock', -1, -1)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'developer')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (4, N'translation')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'2779a422-92d7-4a61-8fbe-c03797c70d6e', 0, CAST(N'2019-03-19T07:31:58.607' AS DateTime), CAST(N'2019-03-19T07:38:03.163' AS DateTime), NULL, N'::1')
