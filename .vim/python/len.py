
string = input("")

while True:
    try:
        string += "\n"
        string += input("")
    except:
        break

print(string, "\n", len(string), "-", string.count("\n"), sep="")

