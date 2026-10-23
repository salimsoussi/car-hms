package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.SignUpCancelDto
import seg3102.carhms.application.dtos.responses.SignUpSummaryDto

/** CU-06 Annuler une inscription. */
interface CancelSignUp {
    /** Étape 2 : inscriptions confirmées et en attente aux randonnées à venir. */
    fun listActiveSignUps(hikerEmail: String): List<SignUpSummaryDto>

    /** Étape 4 : annule l'inscription et promeut le premier en attente. */
    fun cancelSignUp(cancellation: SignUpCancelDto): Boolean
}
