# Log an event with a timestamp
event_log <- function(event) {
  timestamp <- Sys.Date()

  cat("Event:", event, "- Timestamp:", timestamp, "\n")
}

event_log(("User Logged In"))
