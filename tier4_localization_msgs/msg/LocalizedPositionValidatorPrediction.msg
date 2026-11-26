# Localized position validator output

std_msgs/Header header

# Predicted localized position state
# True if the model's predicted the position is valid; false means the model predicted invalid.
bool is_position_valid

# Confidence of the prediction
float32 confidence

# Belief States
uint8 VALID=0
uint8 INVALID=1
uint8 UNKNOWN=2

# Discretized belief after the Bayesian update (posterior):
#   VALID if posterior >= 0.9
#   INVALID if posterior <= 0.1
#   UNKNOWN otherwise
uint8 prediction_belief_state
