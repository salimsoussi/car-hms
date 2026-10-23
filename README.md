# CAR-HMS — Livrable 1 (contrats initiaux)

Backend Kotlin + Spring Boot (contrainte CAR-Req-01).

- `src/main/kotlin/seg3102/carhms/domain/` : un sous-paquetage par sous-domaine, avec README.md
- `application/usecases/` : une interface par cas d'utilisation (sauf Sign In, Sign Out, Generate Trail Usage Report)
- `application/dtos/queries/` : DTO utilisés pour invoquer les commandes
- `application/dtos/responses/` : DTO retournés par les commandes de lecture
- `src/test/resources/seg3102/carhms/contracts/` : un contrat Cucumber (.feature, en français) par commande

| Interface | Commandes |
| --- | --- |
| BrowseHikes | listOpenHikes, searchOpenHikes, listHikesMatchingSkillLevel, getHikeDetails |
| RegisterHiker | registerHiker |
| SignUpForHike | signUpForHike |
| CancelSignUp | listActiveSignUps, cancelSignUp |
| UpdateHiker | getHikerProfile, updateHikerInfo, updateMembershipStatus, recordLeaderCertification |
| CloseHike | closeHike |
| SendHikeReminder | sendHikeReminder |
| CreateHike | listAvailableTrails, createHike |
| CancelHike | cancelHike |
