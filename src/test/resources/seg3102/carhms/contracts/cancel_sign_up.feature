# language: fr
Fonctionnalité: Annuler une inscription (CancelSignUp.cancelSignUp)
  Contrat de la commande cancelSignUp (CU-06).
  Paramètre : SignUpCancelDto (courriel du randonneur, identifiant de l'inscription).
  Précondition : la date limite d'inscription n'est pas passée.

  Scénario: Annulation d'une inscription confirmée avec liste d'attente
    Étant donné qu'une randonnée complète a 2 inscriptions en liste d'attente, "bob@mail.com" en position 1
    Et que "ana@mail.com" y a une inscription confirmée
    Quand "ana@mail.com" annule son inscription
    Alors l'inscription de "ana@mail.com" est annulée
    Et l'inscription de "bob@mail.com" devient confirmée
    Et un courriel de promotion est demandé pour "bob@mail.com"
    Et la randonnée reste complète
    Et l'autre inscription en attente passe en position 1

  Scénario: Annulation d'une inscription confirmée sans liste d'attente
    Étant donné qu'une randonnée complète n'a aucune inscription en liste d'attente
    Et que "ana@mail.com" y a une inscription confirmée
    Quand "ana@mail.com" annule son inscription
    Alors l'inscription est annulée
    Et le statut de la randonnée redevient ouverte

  Scénario: Annulation d'une inscription en liste d'attente
    Étant donné que "ana@mail.com" est en position 1 de la liste d'attente
    Quand "ana@mail.com" annule son inscription
    Alors l'inscription est annulée et les positions suivantes avancent d'un rang
    Et le statut de la randonnée ne change pas

  Scénario: Date limite passée
    Étant donné que la randonnée est fermée
    Quand "ana@mail.com" annule son inscription
    Alors l'annulation est refusée et l'inscription ne change pas

  Scénario: Inscription d'un autre randonneur
    Étant donné que l'inscription appartient à "bob@mail.com"
    Quand "ana@mail.com" tente de l'annuler
    Alors l'annulation est refusée
