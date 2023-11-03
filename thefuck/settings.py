# The Fuck settings file
#
# The rules are defined as in the example bellow:
#
# rules = ['cd_parent', 'git_push', 'python_command', 'sudo']
#
# The default values are as follows. Uncomment and change to fit your needs.
# See https://github.com/nvbn/thefuck#settings for more information.
#

# The Fuck beginner configuration

# Default is to consider all rules. This is good for beginners as it provides maximum coverage.
rules = []

# As a beginner, you might not have any rules to exclude yet. But keep this in mind for future optimizations.
exclude_rules = []

# Wait for 3 seconds to check if the previous command has finished execution.
wait_command = 3

# Always require confirmation before executing the suggested fix. This ensures you review and understand the suggestion.
require_confirmation = True

# Use colorized output for better readability.
no_colors = False

# Keep debugging off. Only enable if you face issues and want to troubleshoot.
debug = False

# Default priority. No specific rule is prioritized over another.
priority = {}

# Use a reasonable number of commands from shell history to check.
history_limit = 15

# Modify shell history to replace wrong commands with corrected ones.
alter_history = True

# Default setting for slow commands. Adjust if you frequently use any other slow command.
slow_commands = ['lein', 'react-native', 'gradle', './gradlew', 'vagrant']

# Do not use instant mode. It's important to review suggestions as a beginner.
instant_mode = False

# Show up to 3 close matches if there are multiple possible corrections.
num_close_matches = 3

# Default environment variables setting.
env = {'LC_ALL': 'C', 'LANG': 'C', 'GIT_TRACE': '1'}
