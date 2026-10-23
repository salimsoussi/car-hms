package seg3102.carhms.application.dtos.queries

import java.util.UUID

/** Annulation d'une inscription (CU-06). */
data class SignUpCancelDto(
    val hikerEmail: String,
    val signUpId: UUID,
)
