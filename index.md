---
title: ib -APTS
permalink: /
layout: default
stringFilters: https://learn.cloudcannon.com/jekyll/string-filters-in-liquid
themeMSSample: https://github.com/MicrosoftLearning/Jekyll-Theme
---
# ib - Accompagnement Pédagogique et Technique des Stages
Liste des éléments d'accompagnement disponibles :  

{% assign stages = site.pages | where_exp:'page',"page.url contains '/stages'" %}
| Stage | Libellé |
| --- | --- | 
{% for stage in stages  %}| {{ stage.name | remove: '.md' }} | [{{ stage.title }}]({{ site.github.url }}{{ stage.url }}) |
{% endfor %}

[Aide concernant la plateforme d'ateliers en ligne goDeploy](https://github.com/renaudwangler/ib/blob/master/extra/goDeployDoc.md#plateforme-godeploy)  
[Mise en place d'un environnement d'ateliers ib sur un compte Azure](https://github.com/renaudwangler/ib/blob/master/extra/ibAzureLabs.md#mise-en-place-dun-environnement-dateliers-ib-sur-un-compte-azure)  
[Compteur de Démarrage/Reprise de stage](https://chrono.html)  