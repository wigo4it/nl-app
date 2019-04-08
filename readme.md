# NL-app

![NL-app](https://nl-app.nl/icons/icon-96x96.png "NL-app")

NL-app geeft informatie aan statushouders (vluchtelingen met een verblijfstatus) in Nederland.

Doel is om statushouders te ondersteunen bij het zelfredzaam worden binnen de Nederlandse samenleving en de gemeente waarin zij wonen in het bijzonder.

NL-app in meertalig opgezet om de taalbarrière, die initieel de zelfredzaamheid beperkt en integratie vertraagd, zoveel mogelijk weg te nemen.

Gemeenten kunnen in het achterliggende content manangement systeem (CMS) hun eigen content beheren en onderling gemeente-overstijgende informatie delen.


## Functionaliteiten

### Versie 1.0
- Gemeente-specifieke content in eigen taal
- Keuze taal en gemeente vanuit instellingen menu
- Home page met overzicht informatiecategorieën
- Informatiecategorie-pagina's met overzicht onderwerpen
- Onderwerp-pagina's met tekstuele informatie en links, ingedeeld in hoofdstukken
- Zoeken vanaf Home pagina
- Toevoegen aan Home-scherm van apparaat en offline gebruik
- CMS voor onderhouden meertalige informatie per gemeente


### Toekomstige versies
- Personalisatie van content door filtering en sortering obv profiel
- Situatiegedreven content suggesties pushen obv profiel
- Gemeentelijk nieuws tonen
- Meer talen ondersteunen
- Aanbod van informatie verbeteren door analyse zoektermen
- Chatbot in eigen taal
- Beheer content door (landelijke) organisaties
- Documenten service met scan en vertaal functies


## Schermvoorbeelden

![NLapp Welkom](./screenshots/s/NLapp%20Welkom.png) 
![NLapp Home](./screenshots/s/NLapp%20Home.png)
![NLapp Home Arabisch](./screenshots/s/NLapp%20Home%20Ar.png)
![NLapp Home Tigrinya](./screenshots/s/NLapp%20Home%20Ti.png)
![NLapp Zoek](./screenshots/s/NLapp%20Zoek.png) 
![NLapp Gezondheidszorg Arabisch](./screenshots/s/NLapp%20Cat%20Ar.png)
![NLapp Huis huren](./screenshots/s/NLapp%20Info1.png)
![NLapp Map](./screenshots/s/NLapp%20Map.png)


## Installeren

Deze instructies beschrijven hoe een kopie van het project up-and-running te krijgen is op een lokale omgeving ten behoeve van ontwikkeling en testen.


### Vereisten

Om het project te kunnen builden en runnen dienen de volgende tools geïnstalleerd te worden:
- [Visual Studio](https://visualstudio.microsoft.com/downloads/)
- [SQL Server](https://www.microsoft.com/nl-nl/sql-server/sql-server-downloads)
- [Node.js](https://nodejs.org/en/download/)
- [Git](https://git-scm.com/download/win) 

### Technologie

Er wordt gebruik gemaakt van de volgende technology-stack:
- .Net framework (v4.5)
- Asp.Net MVC (v5.2.3)
- C#
- Umbraco (v7.10.0)
- SQL server (2008 en hoger)
- log4net
- TypeScript (v2.9.2) & JavaScript
- Html5
- Css & Sass
- Npm
- Git
- Gulp

Umbraco plugins:
- Terratype
- Vorto
- USync
- DiploTraceLogViewer
- GodMode
- TheDashboard


### Installatie procedure

#### Code

- Installeer Visual Studio
  - GitHub ondersteuning (Extensie)
  - Nuget packages: Umbraco.ModelsBuilder

- Installeer SQL Server of gebruik SQL Server as a service

- Installeer Node.js

- Installeer Git

- Clone the repository

- Open de solution in Visual Studio

- Pas de inhoud van de web.config file aan
  - ConnectionString met naam "umbracoDbDSN"
  - AppSettings met keys "nlapp-*" (optioneel)
  - AppSettings met key "nlapp-root-id" dient overeen te komen met het id van de root node in de Umbraco page tree

- Build de solution
  - NuGet packages worden gedownload
  - Build C# code en MVC views
  - Run sass, add prefixes
  - Minify and bundle css
  - Build TypeScript
  - Uglify, minify  en bundle js files

- Database aanmaken en vullen met Demo data. Volg de volgende stappen:
  - Creëer toegang tot een SQL server
  - Start script ```CreateDemoData.ps1``` met administrator rechten en voer de gevraagde credentials in
  Het PowerShell script gebruikt 3 SQL scripts uit de demo-map waarmee een database(*NLappDemo*)-, tabellen- en demodata aangemaakt worden. 
  - Gebruik de connection string van de zojuist aangemaakt database om in de web.config de ConnectionString met naam "umbracoDbDSN" te wijzigen.

- Start de applicatie na een succesvolle build en na het aanpassen van de connection string.

- Navigeer naar de url "{lokale-project-url}/umbraco/", dit start de initialisatie van Umbraco waarbij de database wordt gecofigureerd.
  - Inloggen met gebruikersnaam "**default123@default.nl**" en wachtwoord "**default123**".
  
- Start de applicatie nu opnieuw.
  - De app is nu bereikbaar op "``{lokale-project-url}``"
  - Het CMS is bereikbaar op "``{lokale-project-url}``/umbraco/"


## Toegankelijkheid

De applicatie voldoet aan de WCAG 2.1 richtlijnen voor toegankelijkheid.


## Versiebeheer

Wij gebruiken [SemVer](http://semver.org/) voor versionering. De beschikbare versies zijn terug te vinden als [labels op de repository](https://github.com/wigo4it/nl-app/tags). 


## Bijdragen

Wanneer u een bijdrage wilt leveren aan deze repository kunt u contact met ons opnemen via: [beheer.nl-app@wigo4it.nl]([mailto:beheer.nl-app@wigo4it.nl]).


## Partner worden

Wij staan open voor nieuwe samenwerkingsverbanden om NL-app te verbeteren en verder uit te bouwen.
Stuur ons een [email]([mailto:beheer.nl-app@wigo4it.nl]) met uw voorstel.


## Organisatie
NL-app is tot stand gekomen vanuit een samenwerking tussen Gemeente Amsterdam, VNG Realisatie en Wigo4it.
* [Gemeente Amsterdam](https://www.amsterdam.nl/werk-inkomen/)
* [VNG Realisatie](https://www.vngrealisatie.nl)
* [Wigo4it](https://www.wigo4it.nl)


## Team
* **Allard Plaggenborg** *([Connect Holland](https://www.connectholland.nl)) - Initial work*
* **Benne Holwerda** *([Wigo4it](https://www.wigo4it.nl)) - Initiator, inspiration and management*
* **Inaam Heyouf** *([Gemeente Amsterdam](https://www.amsterdam.nl/werk-inkomen/)) - Product owner, Content*
* **Karoy Bandi** *([Wigo4it](https://www.wigo4it.nl)) - Initial work*
* **Marco Wiggelinkhuizen** *([Wigo4it](https://www.wigo4it.nl)) - Initial work*
* **Suzanne Oostindie** *([Wigo4it](https://www.wigo4it.nl)) - Content
* **Vincent de Vries** *([Wigo4it](https://www.wigo4it.nl)) - UX and testing*

> Contact: [beheer.nl-app@wigo4it.nl]([mailto:beheer.nl-app@wigo4it.nl]).


## Licentie (License)

Licensed under the EUPL. This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
> Copyright © Wigo4it 2019.
