#!/bin/bash
assert() {
    expected="$1"
    input="$2"

    ./417cc "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but got $actual"
        exit 1
    fi
}

assert 0 0
assert 42 42
assert 21 "5+20-4"
assert 13 "10 - 2 + 5"
assert 101 "10 + 20*5 - 9"
assert 10 "-10+20"

echo OK
