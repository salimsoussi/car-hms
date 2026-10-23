# language: fr
Fonctionnalité: Créer une randonnée (CreateHike.createHike)
  Contrat de la commande createHike (CU-10).
  Paramètre : HikeCreateDto. Précondition : l'utilisateur est un organisateur de randonnée connecté.

  Contexte:
    Étant donné que l'organisateur "max@mail.com" a une certification expirant le "2027-06-30" et le niveau d'organisateur "DIFFICILE"
    Et que le sentier "Lac Pink" de difficulté "MODERE" est ouvert "TOUTE_L_ANNEE"
    Et que le sentier "Piste de ski 1" de difficulté "FACILE" est ouvert seulement en "HIVER"

  Scénario: Création valide
    Quand l'organisateur crée une randonnée sur "Lac Pink" le "2026-11-21 09:00", durée 3 h, date limite "2026-11-19 18:00", capacité 12
    Alors une randonnée avec un identifiant unique est créée
    Et son statut est ouverte
    Et l'organisateur "max@mail.com" est consigné comme auteur de la création
    Et les randonneurs peuvent s'y inscrire

  Scénario: Hors saison du sentier
    Quand l'organisateur crée une randonnée sur "Piste de ski 1" le "2026-07-15 09:00"
    Alors la création est refusée avec le motif "hors de la saison d'ouverture"

  Scénario: Date limite plus de 14 jours avant
    Quand l'organisateur crée une randonnée le "2026-12-20 09:00" avec la date limite "2026-12-01 18:00"
    Alors la création est refusée avec le motif "date limite invalide"

  Scénario: Date limite après le début
    Quand l'organisateur crée une randonnée le "2026-12-20 09:00" avec la date limite "2026-12-20 10:00"
    Alors la création est refusée avec le motif "date limite invalide"

  Scénario: Certification expirée à la date de la randonnée
    Quand l'organisateur crée une randonnée le "2027-08-01 09:00"
    Alors la création est refusée avec le motif "certification non valide à la date de la randonnée"

  Scénario: Niveau d'organisateur insuffisant
    Étant donné que le sentier "Mont King" est de difficulté "TRES_DIFFICILE"
    Quand l'organisateur crée une randonnée sur "Mont King"
    Alors la création est refusée avec le motif "niveau d'organisateur insuffisant"

  Scénario: Sentier inconnu ou randonnée non permise
    Quand l'organisateur crée une randonnée sur un sentier absent de la liste de la CCN
    Alors la création est refusée

  Scénario: Capacité non positive
    Quand l'organisateur crée une randonnée de capacité 0
    Alors la création est refusée

  Scénario: Utilisateur non organisateur
    Étant donné que l'utilisateur connecté est un randonneur sans certification
    Quand il tente de créer une randonnée
    Alors la création est refusée
