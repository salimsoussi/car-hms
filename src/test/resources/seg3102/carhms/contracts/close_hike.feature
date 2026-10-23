# language: fr
Fonctionnalité: Fermer une randonnée (CloseHike.closeHike)
  Contrat de la commande closeHike (CU-08), déclenchée par la minuterie du système (H1).

  Scénario: Date limite atteinte
    Étant donné qu'une randonnée ouverte a une date limite d'inscription au "2026-11-10 18:00"
    Et qu'il est "2026-11-10 18:00"
    Quand la minuterie demande la fermeture de la randonnée
    Alors le statut de la randonnée devient fermée
    Et l'étape est consignée avec l'acteur "système" et l'heure
    Et aucune nouvelle inscription ni annulation n'est acceptée

  Scénario: Randonnée complète
    Étant donné qu'une randonnée complète a atteint sa date limite
    Quand la minuterie demande la fermeture de la randonnée
    Alors le statut de la randonnée devient fermée

  Scénario: Date limite non atteinte
    Étant donné que la date limite de la randonnée n'est pas atteinte
    Quand la fermeture est demandée
    Alors la randonnée n'est pas fermée

  Scénario: Randonnée annulée
    Étant donné que la randonnée est annulée
    Quand la fermeture est demandée
    Alors son statut reste annulée
