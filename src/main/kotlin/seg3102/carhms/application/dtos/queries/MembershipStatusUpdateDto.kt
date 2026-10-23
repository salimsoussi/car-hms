package seg3102.carhms.application.dtos.queries

/** Changement du statut d'adhésion par un administrateur (CU-07). */
data class MembershipStatusUpdateDto(
    val adminEmail: String,
    val hikerEmail: String,
    val membershipStatus: String, // ACTIVE, EXPIREE, SUSPENDUE
)
