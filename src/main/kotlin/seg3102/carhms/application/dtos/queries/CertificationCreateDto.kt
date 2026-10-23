package seg3102.carhms.application.dtos.queries

import java.time.LocalDate

/** Certification de chef de randonnée enregistrée par un administrateur (CU-07). */
data class CertificationCreateDto(
    val adminEmail: String,
    val hikerEmail: String,
    val certificateNumber: String,
    val issueDate: LocalDate,
    val expiryDate: LocalDate,
    val organizerLevel: String, // FACILE, MODERE, DIFFICILE, TRES_DIFFICILE
)
