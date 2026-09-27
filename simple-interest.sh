#!/usr/bin/env bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

set -euo pipefail

if ! command -v bc >/dev/null 2>&1; then
    echo "Error: 'bc' is required. Please install bc and try again." >&2
    exit 1
fi

read -r -p "Principal amount: " principal
read -r -p "Annual interest rate (%): " rate
read -r -p "Time (years): " time

# Accept non-negative integers or decimals.
number_re='^[0-9]+([.][0-9]+)?$'

for value in "$principal" "$rate" "$time"; do
    if [[ ! "$value" =~ $number_re ]]; then
        echo "Error: Please enter non-negative numeric values only." >&2
        exit 1
    fi
done

interest=$(bc <<< "scale=2; ($principal * $rate * $time) / 100")
total=$(bc <<< "scale=2; $principal + $interest")

printf '\nSimple interest: %s\n' "$interest"
printf 'Total amount: %s\n' "$total"
