#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /ror/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
