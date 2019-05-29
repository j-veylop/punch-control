import os

# Define variables.
employees = []
mac_address = []
name = ""

# We create a folder to save the scripts in.
#os.mkdir(".scripts")

# And another one to keep logs
#os.mkdir(".logs")

# And last one for the finished tables
#os.mkdir("tables")

# Get number of employees.
num_employees = int(input("Enter number of employees: "))

print("Introduce the names of the employees")

# Get names of employees. We will later associate them with each MAC address.
for i in range(0, num_employees):
    name = input("")
    employees.append(name)

# Get MACs of employees. 
for i in range(0, num_employees):
    mac = input("Enter MAC address for " +employees[i] +" " )
    mac_address.append(mac)
print(employees)
print(mac_address)

# Generate the script files
#for i in range(0, num_employees)
#    os.makedirs(.scripts/employees[i]/)
#    script1.write 
