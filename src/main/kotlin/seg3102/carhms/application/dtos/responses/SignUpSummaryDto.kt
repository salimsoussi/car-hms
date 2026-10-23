package seg3102.carhms.application.dtos.responses

import java.time.LocalDateTime
import java.util.UUID

data class SignUpSummaryDto(
    val signUpId: UUID,
    val hikeId: UUID,
    val hikeTitle: String,
    val hikeStartDateTime: LocalDateTime,
    val signedUpAt: LocalDateTime,
    val status: String, // CONFIRMEE, EN_ATTENTE, ANNULEE
    val waitlistPosition: Int? = null,
)
