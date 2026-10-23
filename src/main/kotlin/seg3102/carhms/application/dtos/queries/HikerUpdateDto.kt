package seg3102.carhms.application.dtos.queries

/** Mise à jour des informations par le randonneur lui-même (CU-07). */
data class HikerUpdateDto(
    val hikerEmail: String,
    val firstName: String,
    val lastName: String,
    val phoneNumber: String,
    val address: AddressCreateDto,
    val emergencyContact: EmergencyContactCreateDto,
)
