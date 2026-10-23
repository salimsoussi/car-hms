package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.SignUpCreateDto
import java.util.UUID

/** CU-05 S'inscrire à une randonnée. */
interface SignUpForHike {
    /** Étape 4 : inscription confirmée ou en liste d'attente ; retourne son identifiant, ou null si refusée. */
    fun signUpForHike(signUp: SignUpCreateDto): UUID?
}
