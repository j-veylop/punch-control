import os

# We create a folder to save the scripts in
#os.mkdir(".scripts")

# And another one to keep logs and tables
#os.mkdir(".punch-control")

employees = []
name = ""
num_employees = int(input("Enter number of employees: "))

for i in range(0, num_employees -1):
    name = str(input())
    employees.append(name)
print(employees)
