package seg3102.carhms.application.dtos.responses

import seg3102.carhms.application.dtos.queries.AddressCreateDto
import seg3102.carhms.application.dtos.queries.EmergencyContactCreateDto
import java.time.LocalDate

data class HikerProfileDto(
    val email: String,
    val firstName: String,
    val lastName: String,
    val phoneNumber: String,
    val address: AddressCreateDto,
    val dateOfBirth: LocalDate,
    val emergencyContact: EmergencyContactCreateDto,
    val skillLevel: String,
    val membershipStatus: String,
    val organizerLevel: String? = null,
    val certificationExpiryDate: LocalDate? = null,
)
