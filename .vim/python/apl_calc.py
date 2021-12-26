from __future__ import division
from math import *
import re

OPERATORS = "+-*"

def import_modules(string: str) -> str:
    """Fonction qui ajoute les importations nécessaires au début de la string.

    Args:
        string (str): Le programme a executer

    Returns:
        str: Le meme programme, mais avec les importations nécessaires.
    """

    # si nécessaire, importer numpy
    if re.match(" np\.\w", string):
        import numpy as np


def translate_string(string: str) -> str:
    """Fonction qui traduit une chaine de caractères en syntaxe APL en une chaine de caractères en
    syntaxe python (avec numpy)

    """

    ########################################
    # Changer les priorités des opérations #
    ########################################

    # enlever toutes les priorités d'opérations : placer une parenthèse après chaque opérateur
    string = re.sub("(?<=[\+\-\*\/]) *((?=[\+\-\*\/])|(?=\d))", "(", string)

    # ajouter les parenthèses à la fin de *string*
    parents = ")" * (string.count("(") - string.count(")"))

    string += parents

    # si il n'est pas déjà présent, ajouter 'result = ' au début de *string*
    if not re.match("^result *= *", string):
        string = "result = " + string


    ##############
    # Opérateurs #
    ##############
    # les operateurs non-python sont remplacés
    replace_operators = {
            "x": "*",
            "^": "**",
            }
    for op in replace_operators:
        # la regle de remplacement est : un operateur est entoure d'espaces (0 ou plus) eux-meme
        # entoures d'un chiffre.
        string = re.sub(
            "(?<=\d)(?<= )*(?<=\))* *" + op + " *(?=\()*(?= )*(?=\d)+",
            replace_operators[op],
            string
        )

    #### Opérateurs avec / #####



    """
    if "!" in string:
        string = re.sub("!(?= )*(?=\d|\.)+", "factorial()")
    """


    # if ";" in string:
    #     string = re.sub("(?<=.)+;(?=.)+", "'''), exec('''")
    #     string = "[exec('''" + string + "''')][-1]"
    return string


text = input("") + '\n'
while True:
    try:
        string += input("") + '\n'
    except:
        break

text = re.sub("; +", "\n", text)

text = translate_string(text)
# text = import_modules(text)

exec(text)
print(result)

