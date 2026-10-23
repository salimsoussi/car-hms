package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.HikerCreateDto

/** CU-02 Enregistrer un randonneur. */
interface RegisterHiker {
    /** Étape 6 : crée le randonneur avec une adhésion active ; retourne son courriel, ou null si refusé. */
    fun registerHiker(hikerInfo: HikerCreateDto): String?
}
