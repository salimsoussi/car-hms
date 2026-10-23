package seg3102.carhms.application.dtos.queries

import java.util.UUID

/** Inscription à une randonnée (CU-05). */
data class SignUpCreateDto(
    val hikerEmail: String,
    val hikeId: UUID,
)
