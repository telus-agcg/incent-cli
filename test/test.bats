#!/usr/bin/env bats

@test "can run our script" {
  run bin/incent --help
  [ "${status}" -eq 0 ]
}

@test "error when no command is given" {
  run bin/incent
  [ "${status}" -eq 1 ]
}

@test "help command returns usage guide" {
  run bin/incent --help 
  [[ "$output" =~ Usage ]]
  [[ "$output" =~ Options ]]
}