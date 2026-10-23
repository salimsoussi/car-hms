package seg3102.carhms.application.dtos.responses

import java.time.LocalDateTime
import java.util.UUID

data class HikeSummaryDto(
    val hikeId: UUID,
    val title: String,
    val trailName: String,
    val startDateTime: LocalDateTime,
    val difficulty: String,
    val organizerName: String,
    val remainingPlaces: Int,
)
