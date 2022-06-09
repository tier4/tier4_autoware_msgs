uint8 NONE = 0                # no operation (e.g. no human driver, no autonomous system)
uint8 DIRECT = 2              # operated manually by a human driver
uint8 REMOTE = 1              # operated manually by remote control through Autoware
uint8 LOCAL = 3               # operated manually by local control (e.g. joystick) through Autoware
uint8 TRANSITION_TO_AUTO = 4  # on transition from manual to auto
uint8 AUTONOMOUS = 5          # operated automatically by Autoware

builtin_interfaces/Time stamp
uint8 mode
