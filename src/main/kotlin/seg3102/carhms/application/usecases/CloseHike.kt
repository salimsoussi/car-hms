package seg3102.carhms.application.usecases

import java.util.UUID

/** CU-08 Fermer une randonnée (déclenché par la minuterie). */
interface CloseHike {
    /** Étape 2 : statut mis à fermée lorsque la date limite est atteinte. */
    fun closeHike(hikeId: UUID): Boolean
}
