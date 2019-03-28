desc "Play rock in rock-paper-scissors"
task :play_rock do
  # Select a random move for the computer
   moves = ["played rock", "played paper", "played scissors"]
   x = rand(moves.length)
   computer_move = moves.at(x)

   # Print the move the computer played
   ap("The computer" + computer_move)
   # Print the outcome of the game
   if computer_move == "played rock"
     ap("We tied!")
   elsif computer_move == "played paper"
     ap("We lost!")
   else
     ap("We won!")
   end
end

desc "Play paper in rock-paper-scissors"
task :play_paper do
  # Select a random move for the computer
   moves = ["played rock", "played paper", "played scissors"]
   x = rand(moves.length)
   computer_move = moves.at(x)

   # Print the move the computer played
   ap("The computer" + computer_move)
   # Print the outcome of the game
   if computer_move == "played rock"
     ap("We won!")
   elsif computer_move == "played paper"
     ap("We tied!")
   else
     ap("We lost!")
   end
end

desc "Play scissors in rock-paper-scissors"
task :play_scissors do
  # Select a random move for the computer
   moves = ["played rock", "played paper", "played scissors"]
   x = rand(moves.length)
   computer_move = moves.at(x)

   # Print the move the computer played
   ap("The computer" + computer_move)
   # Print the outcome of the game
   if computer_move == "played rock"
     ap("We lost!")
   elsif computer_move == "played paper"
     ap("We won!")
   else
     ap("We tied!")
   end
end
