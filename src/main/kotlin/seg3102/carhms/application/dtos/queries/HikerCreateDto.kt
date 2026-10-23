package seg3102.carhms.application.dtos.queries

import java.time.LocalDate

/** Enregistrement d'un randonneur (CU-02). */
data class HikerCreateDto(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val phoneNumber: String,
    val address: AddressCreateDto,
    val dateOfBirth: LocalDate,
    val emergencyContact: EmergencyContactCreateDto,
    val skillLevel: String, // DEBUTANT, INTERMEDIAIRE, AVANCE, EXPERT
    val waiverAccepted: Boolean,
    val legalGuardianName: String? = null, // obligatoire si moins de 18 ans
)
