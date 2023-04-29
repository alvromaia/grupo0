#!/bin/bash

assert_equals() {
  if [ "$1" != "$2" ]; then
    echo "Error: expected '$2' but got '$1'"
    exit 1
  fi
}

# Test case 1: sum of 1 and 2 should be 3
result=$(./sum.sh 1 2 | tail -n 1)
assert_equals "$result" "The sum of 1 and 2 is: 3"

# Test case 2: sum of -1 and 5 should be 4
result=$(./sum.sh -1 5 | tail -n 1)
assert_equals "$result" "The sum of -1 and 5 is: 4"

# Test case 3: sum of 0 and 0 should be 0
result=$(./sum.sh 0 0 | tail -n 1)
assert_equals "$result" "The sum of 0 and 0 is: 0"

echo "All tests passed successfully"
