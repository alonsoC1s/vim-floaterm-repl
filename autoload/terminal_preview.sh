#!/usr/bin/env zsh
filetype=$1
filepath=$2
shift
shift
params=$@
echo "Running $filetype"
echo "====================="
echo ''
case $filetype in
  javascript | js)
     node $filepath $params
    ;;

  bash | sh)
     bash $filepath $params
    ;;

  go )
      go run $filepath $params
    ;;
  python | python3)
      python $filepath $params
    ;;

  *)
    echo -n "unknown"
    ;;
esac

echo ''
echo "====================="
