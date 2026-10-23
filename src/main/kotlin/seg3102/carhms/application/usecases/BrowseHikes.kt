package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.HikeSearchDto
import seg3102.carhms.application.dtos.responses.HikeDetailsDto
import seg3102.carhms.application.dtos.responses.HikeSummaryDto
import java.util.UUID

/** CU-01 Parcourir les randonnées. */
interface BrowseHikes {
    /** Étape 2 : randonnées ouvertes triées par date. */
    fun listOpenHikes(): List<HikeSummaryDto>

    /** Étape 4 : randonnées ouvertes correspondant aux critères, triées par date. */
    fun searchOpenHikes(criteria: HikeSearchDto): List<HikeSummaryDto>

    /** Extension 2a : randonnées ouvertes au niveau du randonneur ou un niveau au-dessus. */
    fun listHikesMatchingSkillLevel(hikerEmail: String): List<HikeSummaryDto>

    /** Étape 6 : détails d'une randonnée. */
    fun getHikeDetails(hikeId: UUID): HikeDetailsDto?
}
