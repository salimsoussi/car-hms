package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.HikeCreateDto
import seg3102.carhms.application.dtos.responses.TrailSummaryDto
import java.util.UUID

/** CU-10 Créer une randonnée. */
interface CreateHike {
    /** Étape 2 : sentiers de la CCN où la randonnée est permise. */
    fun listAvailableTrails(): List<TrailSummaryDto>

    /** Étape 5 : crée la randonnée ouverte ; retourne son identifiant, ou null si refusée. */
    fun createHike(hikeInfo: HikeCreateDto): UUID?
}
