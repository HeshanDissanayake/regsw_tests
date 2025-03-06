import re
import csv

# Input and output file names
input_file = "results_4kb.txt"  # Replace with your actual file
output_file = "output.csv"

# Dictionary to store extracted data
data = []

# Read file and extract data
with open(input_file, "r") as file:
    current_size = None
    current_row = {}

    for line in file:
        # Match SIZE = <number>
        size_match = re.search(r"SIZE\s*=\s*(\d+)", line)
        if size_match:
            # If we already have data, save the previous row
            if current_row:
                data.append(current_row)
            
            # Start a new row
            current_size = int(size_match.group(1))
            current_row = {"SIZE": current_size}

        # Match C_* values
        c_match = re.match(r"(C_[^\s]+)\s*=\s*([-\d]+)", line)
        if c_match:
            key, value = c_match.groups()
            current_row[key] = int(value)

    # Append the last processed row
    if current_row:
        data.append(current_row)

# Get all unique column names (headers)
columns = set()
for row in data:
    columns.update(row.keys())

# Sort column headers (ensuring SIZE is first)
columns = ["SIZE"] + sorted([col for col in columns if col != "SIZE"])

# Write to CSV
with open(output_file, "w", newline="") as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames=columns)
    writer.writeheader()
    writer.writerows(data)

print(f"CSV file '{output_file}' has been created successfully.")
