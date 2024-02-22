library(vetiver)
library(pins)

# Run this to update the models ================================================
my_model <- get_my_model()
class(my_model) <- c("my_model")

# Create the model and then rework the prototype
vetiver_model <- vetiver_model(my_model, "my_model")

# Local Runs
plumber::pr() |>
  vetiver_api(v) |>
  plumber::pr_run()

# Run this to update the pinned model ==========================================
board <- pins::board_connect()
vetiver_pin_write(board = board, vetiver_model = vetiver_model)

v <- vetiver_pin_read(board, "hannar1/my_model")

vetiver_write_plumber(
  board = board,
  name = "hannar1/my_model",
  file = "dev/plumber/plumber.R"
)


# Run this to redeploy the API =================================================
rsconnect::deployAPI(
  "dev/plumber",
  appName = "vetiverTestAPI",
  appTitle = "Vetiver Test API",
  # Change to deploy a version to your account
  account = "hannar1"
)
