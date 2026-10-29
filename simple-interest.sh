#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (% per year): " rate
read -p "Enter time period (in years): " time

# Validate that all inputs are non-negative numbers
for value in "$principal" "$rate" "$time"; do
    if ! [[ "$value" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
        echo "Error: please enter valid non-negative numbers only."
        exit 1
    fi
done

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "Simple Interest = $interest"
echo "Total Amount    = $total"
