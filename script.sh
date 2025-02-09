#!/bin/bash
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
filename="output_$timestamp.html"
echo "Hello, Jenkins! You provided: $1" | tee "$filename"
echo "<html><body><h1>User Input Log</h1><p>$1</p></body></html>" > "$filename"