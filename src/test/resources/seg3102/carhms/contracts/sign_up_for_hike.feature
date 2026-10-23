# language: fr
Fonctionnalité: S'inscrire à une randonnée (SignUpForHike.signUpForHike)
  Contrat de la commande signUpForHike (CU-05).
  Paramètre : SignUpCreateDto (courriel du randonneur, identifiant de la randonnée).
  Préconditions : le randonneur est connecté et son adhésion est active.

  Contexte:
    Étant donné qu'un randonneur "ana@mail.com" de niveau "INTERMEDIAIRE" a une adhésion active
    Et qu'une randonnée ouverte de difficulté "MODERE" et de capacité 10 existe

  Scénario: Place disponible
    Étant donné que la randonnée a 5 inscriptions confirmées
    Quand le randonneur s'inscrit à la randonnée
    Alors une inscription confirmée est créée avec l'heure de l'inscription
    Et la randonnée reste ouverte
    Et un courriel de confirmation est demandé au service de courriel

  Scénario: Dernière place
    Étant donné que la randonnée a 9 inscriptions confirmées
    Quand le randonneur s'inscrit à la randonnée
    Alors une inscription confirmée est créée
    Et le statut de la randonnée devient complète
    Et l'utilisateur à l'origine de l'étape est consigné

  Scénario: Randonnée complète, liste d'attente
    Étant donné que la randonnée est complète et a 2 inscriptions en liste d'attente
    Quand le randonneur s'inscrit à la randonnée
    Alors une inscription en liste d'attente est créée en position 3
    Et un courriel indiquant la position 3 est demandé

  Plan du scénario: Admissibilité selon la difficulté
    Étant donné qu'une randonnée ouverte de difficulté "<difficulte>" existe
    Quand le randonneur de niveau "INTERMEDIAIRE" s'y inscrit
    Alors l'inscription est "<resultat>"

    Exemples:
      | difficulte     | resultat |
      | FACILE         | acceptée |
      | MODERE         | acceptée |
      | DIFFICILE      | acceptée |
      | TRES_DIFFICILE | refusée  |

  Scénario: Adhésion non active
    Étant donné que l'adhésion du randonneur est suspendue
    Quand le randonneur s'inscrit à la randonnée
    Alors l'inscription est refusée et aucune inscription n'est créée

  Scénario: Déjà inscrit
    Étant donné que le randonneur a déjà une inscription confirmée à cette randonnée
    Quand il s'inscrit de nouveau
    Alors l'inscription est refusée

  Scénario: Randonnée fermée ou annulée
    Étant donné que la randonnée est fermée
    Quand le randonneur s'inscrit à la randonnée
    Alors l'inscription est refusée
