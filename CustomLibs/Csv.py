import csv

def read_csv_file(filename):
    with open(filename, mode='r', newline='', encoding='utf-8') as csvfile:
        return list(csv.reader(csvfile))