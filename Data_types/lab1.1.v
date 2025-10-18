#!/bin/bash
# create.sh — create lab and sol files with numbered names
# Usage: ./create.sh <lab_number> <count>
# Example: ./create.sh 2 10 → lab2.1.v ... lab2.10.v and sol2.1.v ... sol2.10.v

# Check arguments
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <lab_number> <count>"
    exit 1
fi

lab_num=$1
count=$2

# Create lab files
for ((i=1; i<=count; i++)); do
    touch "lab${lab_num}.${i}.v"
    touch "sol${lab_num}.${i}.v"
done

echo "✅ Created ${count} lab and ${count} sol files for lab${lab_num}"
