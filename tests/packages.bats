#!/usr/bin/env bats
# -*- shell-script -*-
load test_helpers

@test "[$TEST_FILE] Check depman version" {
    run launch depman version
    [[ ${lines[0]} =~ "depman 0.3.4" ]]
}

@test "[$TEST_FILE] Check yatr version" {
    run launch yatr --version
    [[ ${lines[0]} =~ "yatr 0.0.5" ]]
}

@test "[$TEST_FILE] Check system Python version" {
    run launch python --version
    [[ ${lines[0]} =~ "Python 2.7" ]]
}