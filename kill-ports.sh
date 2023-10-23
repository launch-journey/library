for port in {3000..3010} 8686; do
  pid=$(lsof -ti tcp:$port)
  if [[ -n $pid ]]; then
    kill -9 $pid
  fi
done
