from math import *



string = input("")

while True:
    try:
        string += "\n" + input("")
    except:
        break

if "\n" in string:
    # in this case, we consider that the user will put himself the print
    # statements for the output
    exec(string)
else:
    # here, we consider that the user wants the value of the current line to be
    # printed, so we first assign it to *_result*
    string = "_result = " + string # add assignation to *_result*
    exec(string) # execute
    print(_result) # print *_result*

