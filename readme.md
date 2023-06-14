![dernière compilation](https://github.com/renaudwangler/ib-apts/actions/workflows/jekyll-gh-pages.yml/badge.svg)
# Fichiers de stage
Ajouter un fichier (avec l'extension **.md**) l'ajoute dans le menu de sélection.  

Le contenu des stages est rédigé en [format markdown](https://docs.github.com/fr/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).  

# Variables
Les variables sont à insérer dans un [en-tête YAML](https://jekyllrb.com/docs/front-matter/) au début du fichier de chaque stage.  
La variable obligatoire en en-tête du stage  
- **title:** Le nom du stge en toutes lettres  

Les variables disponibles dans l'en-tête de chaque stage  
- **labs:** url des labs officiels sur Github
- **labsFR:** url des labs officiels sur Github
- **Azure: true** Stage nécessitant des conseils sur Azure
- **goDeploy: true** Stage nécessitant la plateforme d'ateliers goDeploy
- **m365: true** Stage nécessitant des conseils sur Microsoft 365
- **editDate:** Afficher la date de dernière édition d'un APTS dans son pied de page.

# Remarques
Les balises de code se voient adjointes un bouton pour faciliter la copie dudit code.  
Les liens sur les pages de stage sont automatiquement ouverts dans un nouvel onglet.  
