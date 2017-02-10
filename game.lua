#!/usr/bin/env lua-any
-- Lua-Versions: 5.3
-- to work above shebang package lua-any need to be installed

-- ##################
-- guess number game
-- ##################

math.randomseed( os.time() )

computer_choice = math.random(1, 100)

io.write('Познай числото ми (1-100)!\n')
io.write('my number is: ', computer_choice, "\n")
attempts = 1

while (attempts <= 5) do
   io.write(
      'Въведете предположението си ['
      , attempts
      , '/5]: '
   )
   user_choice = tonumber(io.read())

   if 5 == attempts then
      io.write('Ти загуби, числото ми беше: ', computer_choice, "\n")
      os.exit(true)
   end

   if (user_choice == computer_choice) then
      io.write('Браво, ти позна числото - ', computer_choice, "\n")
      os.exit(true)
   elseif user_choice < computer_choice then
      io.write("Нагоре\n")
   elseif user_choice > computer_choice then
      io.write("Надолу\n")
   end
   attempts = attempts + 1
end
