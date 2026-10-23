package seg3102.carhms.application.dtos.queries

import java.time.Duration
import java.time.LocalDateTime

/** Création d'une randonnée (CU-10). */
data class HikeCreateDto(
    val organizerEmail: String,
    val trailId: String,
    val title: String,
    val description: String,
    val startDateTime: LocalDateTime,
    val expectedDuration: Duration,
    val registrationDeadline: LocalDateTime,
    val capacity: Int,
)
