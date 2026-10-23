package seg3102.carhms.application.usecases

import seg3102.carhms.application.dtos.queries.CertificationCreateDto
import seg3102.carhms.application.dtos.queries.HikerUpdateDto
import seg3102.carhms.application.dtos.queries.MembershipStatusUpdateDto
import seg3102.carhms.application.dtos.responses.HikerProfileDto

/** CU-07 Mettre à jour un randonneur. */
interface UpdateHiker {
    /** Étape 2 : informations actuelles du randonneur. */
    fun getHikerProfile(hikerEmail: String): HikerProfileDto?

    /** Étape 4 : mise à jour par le randonneur. */
    fun updateHikerInfo(update: HikerUpdateDto): Boolean

    /** Extension 3a : statut d'adhésion modifié par un administrateur. */
    fun updateMembershipStatus(update: MembershipStatusUpdateDto): Boolean

    /** Extension 3b : certification de chef de randonnée ; le randonneur devient organisateur. */
    fun recordLeaderCertification(certification: CertificationCreateDto): Boolean
}
