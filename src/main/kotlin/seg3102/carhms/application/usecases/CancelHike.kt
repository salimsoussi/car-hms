package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.HikeCancelDto

/** CU-11 Annuler une randonnée. */
interface CancelHike {
    /** Étape 4 : annule la randonnée et toutes ses inscriptions, avise les randonneurs. */
    fun cancelHike(cancellation: HikeCancelDto): Boolean
}
