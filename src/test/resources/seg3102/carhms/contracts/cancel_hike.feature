# language: fr
Fonctionnalité: Annuler une randonnée (CancelHike.cancelHike)
  Contrat de la commande cancelHike (CU-11).
  Paramètre : HikeCancelDto (courriel du demandeur, identifiant de la randonnée, motif).
  Précondition : le demandeur est l'organisateur de la randonnée ou un administrateur.

  Contexte:
    Étant donné que l'organisateur "max@mail.com" a créé une randonnée qui n'a pas commencé
    Et qu'elle a 4 inscriptions confirmées et 2 en liste d'attente

  Scénario: Annulation par l'organisateur
    Quand "max@mail.com" annule la randonnée avec le motif "Alerte d'orage"
    Alors le statut de la randonnée devient annulée
    Et le motif, l'auteur "max@mail.com" et l'heure sont consignés
    Et les 6 inscriptions deviennent annulées
    Et un courriel contenant le motif "Alerte d'orage" est demandé pour chacun des 6 randonneurs

  Scénario: Annulation par un administrateur
    Quand un administrateur annule la randonnée avec un motif
    Alors le statut de la randonnée devient annulée et l'administrateur est consigné comme auteur

  Scénario: Demandeur non autorisé
    Quand un autre organisateur tente d'annuler la randonnée
    Alors l'annulation est refusée et rien ne change

  Scénario: Motif vide
    Quand "max@mail.com" annule la randonnée sans motif
    Alors l'annulation est refusée

  Scénario: Randonnée commencée, terminée ou déjà annulée
    Étant donné que la randonnée a commencé
    Quand "max@mail.com" tente de l'annuler
    Alors l'annulation est refusée
