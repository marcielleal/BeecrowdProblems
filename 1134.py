option = 0
dic = [0, 0, 0]
while (option != 4):
    option = int(input(''))
    if option < 4 and option > 0:
        option -= 1
        dic[option] += 1

print("""MUITO OBRIGADO
Alcool: %d
Gasolina: %d
Diesel: %d"""%(dic[0], dic[1], dic[2]))
