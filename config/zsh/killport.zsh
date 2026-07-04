# killport <port> — kill whatever process is listening on the given TCP port.
# A function (not an alias) so it can take the port as an argument.
killport() {
  if [[ -z "$1" ]]; then
    echo "usage: killport <port>" >&2
    return 1
  fi
  local pids
  pids=$(lsof -ti tcp:"$1")
  if [[ -z "$pids" ]]; then
    echo "no process listening on port $1"
    return 0
  fi
  echo "$pids" | xargs kill -9
  echo "killed process(es) on port $1: ${pids//$'\n'/ }"
}
