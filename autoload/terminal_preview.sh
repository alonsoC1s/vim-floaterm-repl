#!/usr/bin/env zsh
filetype=$1
filepath=$2
run_cmd=''
shift
shift
params=$@
case $filetype in
  javascript | js)
     run_cmd="node"
    ;;

  bash | sh)
     run_cmd="bash"
    ;;

  go )
	filetype="${filetype}  "
	run_cmd="go"
    ;;
  python | python3)
	filetype="${filetype}  (conda: $CONDA_DEFAULT_ENV)"
	run_cmd="python"
    ;;

  *)
    echo -n "unknown"
    ;;
esac

echo "Running $filetype"
echo "==="
echo ''

$run_cmd $filepath $params

echo ''
echo "====================="
