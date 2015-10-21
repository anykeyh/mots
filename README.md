# Mots

Juste un peu de fun en relation avec cette superbe vidéo: [La machine à inventer des mots (avec Code MU) — Science étonnante #17](https://www.youtube.com/watch?v=YsR7r2378j0)

## Utilisation

Générer la table des probabilités pour le graph de Markov

```
  ruby import.rb
```

Générer 100 mots aléatoires:

```
  ruby generate.rb
```

## Parametres

On peut jouer sur un parametre `NUM_LETTERS_STORED` qui represente la profondeur de lettre avant la lettre à ajouter pour générer le mot.

Pour un résultat optimal, `3` et plus semble être sympa!