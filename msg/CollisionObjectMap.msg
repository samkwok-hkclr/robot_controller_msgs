# Single key-value entry for a collision object in the planning scene.
# The map itself is represented as a sequence of these entries, since
# ROS 2 IDL has no native map type.
string                        object_id
moveit_msgs/CollisionObject   collision_object