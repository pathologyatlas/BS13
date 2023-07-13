#!/bin/bash

items=( $(find ./ -type f -o -type d) )   # Find all files and directories

batch_size=2000
total_items=${#items[@]}
batches=$((($total_items + $batch_size - 1) / $batch_size))

start_batch=0

for ((i=$start_batch; i<$batches; i++))
do
  start=$((i*batch_size))
  end=$((start+batch_size-1))

  if [[ $end -gt $((total_items-1)) ]]; then
    end=$((total_items-1))
  fi

  echo "Processing items from $start to $end"
  for ((j=start; j<=end; j++))
  do
    if [ -e "${items[$j]}" ]; then
      git add "${items[$j]}"
    else
      git rm -r "${items[$j]}"   # The -r option allows git rm to delete directories
    fi
  done

  # Check if there are changes staged for commit
  if git diff --staged --quiet; then
    echo "No changes to commit. Stopping script."
    exit 0
  else
    git commit -m "WIP Adding items from $start to $end"
    echo "Committing after adding items from $start to $end. There are $total_items items in total."
    echo "Batch number $((i+1)) is being processed."
    git push origin
    echo "Pushed items from $start to $end. There are $total_items items in total."
    echo "Batch number $((i+1)) has been processed."
    sleep 120
  fi
done
