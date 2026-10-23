package seg3102.carhms.application.dtos.queries

import java.util.UUID

/** Annulation d'une randonnée (CU-11). */
data class HikeCancelDto(
    val requesterEmail: String,
    val hikeId: UUID,
    val reason: String,
)
