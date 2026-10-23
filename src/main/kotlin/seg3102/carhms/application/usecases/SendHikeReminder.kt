package seg3102.carhms.application.usecases

import java.util.UUID

/** CU-09 Envoyer un rappel de randonnée (déclenché par la minuterie). */
interface SendHikeReminder {
    /** Étape 4 : rappel (avec avertissement météo éventuel) aux inscrits confirmés. */
    fun sendHikeReminder(hikeId: UUID): Boolean
}
