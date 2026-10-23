# language: fr
Fonctionnalité: Enregistrer un randonneur (RegisterHiker.registerHiker)
  Contrat de la commande registerHiker (CU-02).
  Paramètre : HikerCreateDto. Préconditions : le visiteur n'est pas connecté.

  Contexte:
    Étant donné qu'un code d'invitation "CAIRN-0042" valide et non utilisé existe
    Et qu'aucun randonneur n'a le courriel "leo@mail.com"

  Scénario: Enregistrement d'un adulte
    Quand un visiteur de 25 ans s'enregistre avec le code "CAIRN-0042", le courriel "leo@mail.com", des informations complètes et la décharge acceptée
    Alors un randonneur identifié par "leo@mail.com" est créé
    Et son adhésion est active
    Et l'acceptation de la décharge est consignée
    Et le code d'invitation "CAIRN-0042" est consommé

  Scénario: Enregistrement d'un mineur avec tuteur
    Quand un visiteur de 16 ans s'enregistre avec la décharge acceptée par le tuteur légal "Marie Roy"
    Alors le randonneur est créé avec une adhésion active
    Et le nom du tuteur "Marie Roy" est consigné avec la décharge

  Scénario: Mineur sans tuteur
    Quand un visiteur de 16 ans s'enregistre sans nom de tuteur légal
    Alors l'enregistrement est refusé
    Et aucun randonneur n'est créé et le code n'est pas consommé

  Scénario: Code d'invitation invalide ou déjà utilisé
    Étant donné que le code "CAIRN-0042" a déjà été utilisé
    Quand un visiteur s'enregistre avec le code "CAIRN-0042"
    Alors l'enregistrement est refusé avec le motif "code d'invitation invalide"

  Scénario: Courriel déjà utilisé
    Étant donné qu'un randonneur a déjà le courriel "leo@mail.com"
    Quand un visiteur s'enregistre avec le courriel "leo@mail.com"
    Alors l'enregistrement est refusé avec le motif "courriel déjà utilisé"

  Scénario: Décharge non acceptée
    Quand un visiteur s'enregistre sans accepter la décharge
    Alors l'enregistrement est refusé et aucun randonneur n'est créé
