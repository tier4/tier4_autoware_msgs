# constants
uint8 NONE = 0 # 状態不明
uint8 NOT_COPIED = 1 # コピー未実施
uint8 IN_PROGRESS = 2 # コピー中
uint8 SUCCESS = 3 # コピー完了
uint8 FAILED = 4 # コピー失敗

# fields
uint8 status
uint8 progress_percentage
string project_id
string vehicle_id
string date
string message
