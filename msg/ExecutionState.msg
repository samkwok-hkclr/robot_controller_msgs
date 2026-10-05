# Publishes the current execution state of the controller.
std_msgs/Header header

# True while a trajectory is being executed (sync or async).
bool is_executing

# True if the current execution is async (dispatched to the action server).
# False if sync (blocking) or if no execution is in progress.
bool is_async

# MoveIt error code of the most recent completed execution.
# Before any execution has completed, this is SUCCESS (=1).
moveit_msgs/MoveItErrorCodes last_result

# Which service triggered the current (or most recent) execution.
# Empty string if no execution has been started yet.
string source