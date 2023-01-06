file = open("git-version.txt", "r")
num = file.read()
num = int(num) + 1
file.write(str(num))