# Projet Haskell

<!-- .slide: class="page-title" -->



## Package management

Deux systèmes cohabitent :

- Cabal
- Stack



## Cabal

- Systeme de Build
- Configuration de l’application
- Distribution des Packages
- Gestion auto des Packages
- Repo public de plusieurs milliers de bibliothèques 



## Création projet

Pour créer et exécuter un projet

```shell
$ mkdir first-cabal-prj && cd first-cabal-prj  
$ cabal init -n --is-executable  
$ cabal v2-run
someFunc
```



## Stack

- Sytème de Build basé sur le compilateur GHC (Glasgow Haskell Compiler)
- Build reproductible avec un fichier de lock a la façon de npm
- Repository des Packages versionnés pour leur compatibilité avec une version du compilateur
- Possibilité de lancer ses test unitaires
- Possibilité de visualiser l’arbre des dépendances
- Système de template de projets, façon archétypes Maven



## Création projet

Pour créer et exécuter un projet

```shell
$ stack new first-prj
$ cd first-prj
$ stack setup
$ stack build
$ stack exec first-prj-exe
someFunc
```



## Templates

https://github.com/commercialhaskell/stack-templates
