string diag_path          # Corresponding diagnostic graph path (e.g. /localization/001-topic_status/initialpose)
uint8 diag_level          # Corresponding diagnostic level (0=OK, 1=WARN, 2=ERROR, 3=STALE)

string error_code         # Error code (e.g. LOC-00-E00-001E)
uint32 priority           # Display priority. A higher number indicates higher priority. The notifications field is sorted in descending order.
uint8 notification_level  # Notification level. Define the meaning of each value ​​in agreement with the audience in advance.
string[] language_codes   # Language code according to ISO 639-1 (e.g. ja, en). The index corresponds to situations and solutions fields.
string[] situations       # A description of the situation based on the current state. This must be the same length as language_codes field.
string[] solutions        # A description of the solution based on the current state. This must be the same length as language_codes field.
