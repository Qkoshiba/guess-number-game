-- guess number game

math.randomseed( os.time() )

computer_choice = math.random(1, 100)

io.write('Познай числото ми (1-100)!\n')

io.write('Въведете предположението си: ')
user_choice = io.read()
