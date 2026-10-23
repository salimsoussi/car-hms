# language: fr
Fonctionnalité: Envoyer un rappel de randonnée (SendHikeReminder.sendHikeReminder)
  Contrat de la commande sendHikeReminder (CU-09), déclenchée par la minuterie un jour avant la randonnée (H1, H16).

  Contexte:
    Étant donné qu'une randonnée fermée débute dans 24 heures
    Et qu'elle a 3 inscriptions confirmées et 1 inscription en liste d'attente

  Scénario: Beau temps prévu
    Étant donné que le service météo prévoit du soleil au point de départ
    Quand la minuterie demande l'envoi du rappel
    Alors un courriel de rappel avec la date, l'heure de début, le sentier et le point de départ est demandé pour chacun des 3 randonneurs confirmés
    Et aucun courriel n'est demandé pour l'inscription en liste d'attente
    Et le courriel ne contient pas d'avertissement météo
    Et le rappel est marqué comme envoyé

  Scénario: Pluie ou neige prévue
    Étant donné que le service météo prévoit de la pluie au point de départ
    Quand la minuterie demande l'envoi du rappel
    Alors chaque courriel de rappel contient un avertissement météo

  Scénario: Service météo indisponible
    Étant donné que le service météo ne répond pas
    Quand la minuterie demande l'envoi du rappel
    Alors les rappels sont envoyés sans avertissement météo

  Scénario: Rappel déjà envoyé ou randonnée annulée
    Étant donné que le rappel a déjà été envoyé
    Quand la minuterie demande l'envoi du rappel
    Alors aucun courriel n'est demandé
