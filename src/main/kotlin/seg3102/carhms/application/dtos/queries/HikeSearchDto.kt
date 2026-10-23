package seg3102.carhms.application.dtos.queries

import java.time.LocalDate

/** Critères de recherche (CU-01) ; un critère null est ignoré. */
data class HikeSearchDto(
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null, // FACILE, MODERE, DIFFICILE, TRES_DIFFICILE
)
