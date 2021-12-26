string = '" ' + input("") + '\n'
while True:
    try:
        string += '# ' + input("") + '\n'
    except:
        break

print(string)
