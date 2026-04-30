#!/bin/bash

echo "Running health check..."

response=$(curl -s http://localhost:3000/health)

if [[ "$response" == *"OK"* ]]; then
  echo "Test Passed"
  exit 0
else
  echo "Test Failed"
  exit 1
fi
