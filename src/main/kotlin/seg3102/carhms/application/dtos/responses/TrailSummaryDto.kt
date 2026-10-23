package seg3102.carhms.application.dtos.responses

data class TrailSummaryDto(
    val trailId: String,
    val name: String,
    val type: String,
    val surface: String,
    val difficulty: String,
    val season: String,
    val sector: String,
    val parkingAvailable: Boolean,
)
