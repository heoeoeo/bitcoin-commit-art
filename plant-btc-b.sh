#!/bin/bash

DATES=(
  "2025-01-05"
  "2025-01-06"
  "2025-01-07"
  "2025-01-08"
  "2025-01-09"
  "2025-01-10"
  "2025-01-11"
  "2025-01-12"
  "2025-01-15"
  "2025-01-18"
  "2025-01-19"
  "2025-01-22"
  "2025-01-25"
  "2025-01-27"
  "2025-01-28"
  "2025-01-30"
  "2025-01-31"
)

touch commit.txt

for DATE in "${DATES[@]}"
do
  export GIT_AUTHOR_DATE="$DATE 12:00:00"
  export GIT_COMMITTER_DATE="$DATE 12:00:00"
  echo "Commit for $DATE" >> commit.txt
  git add commit.txt
  git commit -m "Commit on $DATE"
done

