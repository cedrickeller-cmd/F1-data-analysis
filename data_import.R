# Install package
install.packages("f1dataR")

# Load the necessary library
library(f1dataR)

# Set the cache directory to the existing "cache" folder in the current directory
options(f1dataR.cache = "f1dataR-cache")  # Use the folder named "cache"

# Load lap times for the Bahrain Grand Prix, 2023 (using round instead of race)
laps <- load_laps(season = 2023, round = 1)  # Use the correct round number

# Display the lap data
cat("----------\nlap data\n----------\n")
print(head(laps))

# Select a specific driver (e.g., "VER" for Verstappen)
driver <- "VER"  # Change this to the desired driver's abbreviation

# Load telemetry data for the selected driver (using cache if available)
telemetry <- load_driver_telemetry(season = 2023, round = 1, session = "R", driver = driver)

# Check if telemetry data is available
if (is.null(telemetry)) {
  stop("Failed to retrieve telemetry data for the selected driver.")
}

cat("----------\ntelemetry\n----------\n")
print(head(telemetry))

