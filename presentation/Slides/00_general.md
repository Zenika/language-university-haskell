# Haskell

<!-- .slide: class="page-title" -->



## Histoire

- Language de recherche universitaire.
- Plusieurs implementations Glasgow ou Utrech
- La plus utilisée celle de l’université de Glasgow



## Installation

- Linux

Il existe des packages pour les différentes distributions

- MacOS

```shell
brew install ghc
brew install stack
```

- Windows

```
https://get.haskellstack.org/stable/windows-x86_64-installer.exe
```



## Short Version

Pour aller plus vite, voici un excellent guide

[https://www.tutorialspoint.com/haskell/haskell_quick_guide.html](https://www.tutorialspoint.com/haskell/haskell_quick_guide.html)



## Premiers pas

Environnement de test Repl (ou shell...)

```shell
$ ghci
Prelude> 5 * 3
15
Prelude> :t "a" 
"a" :: [Char]
```



## Les types

Pour connaitre le type d'un element on peut utiliser `:t`

```shell
Prelude> :t True                  # Boolean
True :: Bool
Prelude> :t 5                     # Entier
5 :: Num p => p
Prelude>  :t 5.45                 # Nombre a virgule
5.45 :: Fractional p => p
Prelude> :t "a"                   # Charactere
"a" :: [Char]
Prelude>  :t "abracadabra"        # Chaine de caracteres
"abracadabra" :: [Char]
Prelude>  :t (1,True,'a', 1.34)   # Tuple
(1,True,'a', 1.34) :: (Fractional d, Num a) => (a, Bool, Char, d)
```



## Les listes 1/3

```shell
Prelude> [1,2,3,4,5]              # Ceci est une liste
[1,2,3,4,5] 
Prelude> :t [1,2,3,4,5]           # une liste d'entiers
[1,2,3,4,5] :: Num a => [a]
Prelude> [1..5]                   # On peut initialiser est une liste comme ceci
[1,2,3,4,5]
Prelude> [x*2| x<-[1..10]]        # Creer une liste a partir d'une autre 
                                  # en appliquant une fonction sur la premiere
[2,4,6,8,10,12,14,16,18,20]
```



## Les listes 2/3

Pour une liste `x` de `[0..n]`

- Lire le premier élément (`0`) : `head x`
- Lire le dernier élément (`n`) : `last x`
- Lire le reste des éléments (`1..n`) : `tail x`
- Lire les premiers éléments (`0..n-1`): `init x`
- Connaitre la tailler : `length x`
- Garder les `y` premiers elements : `take y x`
- Supprimer les `y` premiers elements : `drop y x`



## Les listes 3/3

Pour une liste `x` de `[0..n]`

- Valeur minimale : `min x`
- Valeur maximale : `max x`
- Somme des valeurs : `sum x`
- Produit des valeurs : `product x`
- Check présence de `y` : `elem y (x)`



## Déclarer une fonction 

```shell
add :: Integer -> Integer -> Integer   # déclaration function
                                       #  (nom -> types parametres -> type sortie)
add x y =  x + y        # définition function 
                        # nom fonction  noms parametres = corps de la fonction
```



## Fonction factorielle

```shell

# Using recursion (with the "ifthenelse" expression)
factorial n = if n < 2
              then 1
              else n * factorial (n - 1)

# Using recursion (with pattern matching)
factorial 0 = 1
factorial n = n * factorial (n - 1)

# Using recursion (with guards)
factorial n
   | n < 2     = 1
   | otherwise = n * factorial (n - 1)
```



## Lambda Expression

Lambda: defined with the `\`

```shell
print ((\x -> x + 1) 4)
```



<!-- .slide: class="page-tp1" -->

Fizz Buzz
