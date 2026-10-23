# language: fr
Fonctionnalité: Rechercher des randonnées ouvertes (BrowseHikes.searchOpenHikes)
  Contrat de la commande searchOpenHikes (CU-01, étape 4). Commande de lecture.
  Paramètre : HikeSearchDto (nom de sentier, date, difficulté ; un critère vide est ignoré).

  Scénario: Recherche par nom de sentier
    Étant donné que des randonnées ouvertes existent sur les sentiers "Lac Pink" et "Wolf"
    Quand un visiteur recherche les randonnées ouvertes du sentier "Lac Pink"
    Alors seules les randonnées ouvertes du sentier "Lac Pink" sont retournées, triées par date

  Scénario: Recherche par date et difficulté
    Étant donné que des randonnées ouvertes existent à plusieurs dates et difficultés
    Quand un visiteur recherche les randonnées ouvertes du "2026-11-14" de difficulté "MODERE"
    Alors seules les randonnées ouvertes de cette date et de cette difficulté sont retournées

  Scénario: Aucune randonnée ne correspond
    Étant donné qu'aucune randonnée ouverte ne correspond aux critères
    Quand un visiteur lance la recherche
    Alors une liste vide est retournée
