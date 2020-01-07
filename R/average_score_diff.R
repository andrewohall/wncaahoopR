#' Average Score Differential
#'
#' Computes Time-Based Average Score Differential for the Home Team
#' @description This function returns a single value for the average score differential.
#' @usage average_score_diff(pbp_data)
#' @param pbp_data Play-by-play data returned from w_get_pbp_game
#' @return Average score differential
#' @export
average_score_diff <- function(pbp_data) {
  ### Error Testing
  if(is.na(pbp_data)) {
    stop("game_id is missing with no default")
  }
  
  avg_sd <- sum(pbp_data$play_length * pbp_data$score_diff/max(pbp_data$secs_remaining_absolute), na.rm = T)
  return(avg_sd)
}