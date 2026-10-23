package seg3102.carhms.application.dtos.responses

import java.time.Duration
import java.time.LocalDateTime
import java.util.UUID

data class HikeDetailsDto(
    val hikeId: UUID,
    val title: String,
    val description: String,
    val trail: TrailSummaryDto,
    val startDateTime: LocalDateTime,
    val expectedDuration: Duration,
    val registrationDeadline: LocalDateTime,
    val capacity: Int,
    val remainingPlaces: Int,
    val status: String,
    val organizerName: String,
)
