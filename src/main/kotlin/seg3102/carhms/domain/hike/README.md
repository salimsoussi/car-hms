# Sous-domaine : Gestion des randonnées (cœur)

Randonnée (entité racine d'agrégat) : identifiant unique, titre, description, sentier, date et heure de début,
durée prévue, date limite d'inscription, capacité, organisateur.

Cycle de vie : OUVERTE → COMPLÈTE → FERMÉE → TERMINÉE, ou ANNULÉE avant le début. Chaque étape consigne
l'utilisateur (ou le système) qui l'a effectuée et l'heure.

Invariants : date dans la saison d'ouverture du sentier ; date limite entre 14 jours avant et le début ;
certification de l'organisateur valide à la date ; niveau d'organisateur ≥ difficulté du sentier.

Cas d'utilisation : Créer, Annuler, Fermer une randonnée ; Envoyer un rappel.
