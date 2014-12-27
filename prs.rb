puts "=> Let's play Paper, Rock, Scissors!"
puts

begin

  puts "=> Please enter 'p' for Paper, 'r' for Rock, and 's' for Scissors:"
  user_choice = gets.chomp
  user_options = {:p => "Paper", :r => "Rock", :s => "Scissors"}
  puts

  begin

    if ["p", "r", "s"].include?(user_choice)
      puts "=> You have selected #{user_options[user_choice.to_sym]}"
      puts
    else
      puts "Please stick to the options. It's for your own good. Enter 'p' for Paper, 'r' for Rock, and 's' for Scissors: "
      user_choice = gets.chomp
    end

  end until ["p", "r", "s"].include?(user_choice)

  game_choices = ["Paper", "Rock", "Scissors"]
  computer_choice = game_choices.sample
  puts "=> I have selected #{computer_choice}."
  puts

  user_message_win = ["Wow. Can't believe it. You won.",
                      "Huh. There must be something going on inside me. You beat me.", 
                      "Can't believe my luck. You won.", 
                      "Seriously? This is almost impossible. Game is yours.", 
                      "Yippie dippidy doo. You are the winner..."].sample

  user_message_lose = ["As usual, I'm good. You lost.",
                       "You didn't bet your house, did you? I won.",
                       "As expected, I won.", "You can't beat a computer. My game.",
                       "I am the WINNER! Again: W-I-N-N-E-R!!!"].sample

  user_message_tie = ["We're tied.", 
                      "System Malfunction. Tie.", 
                      "This is weird. Tie.", 
                      "Sure. Sure. Tie game."].sample

  case 
   when (user_choice == "r") && (computer_choice == game_choices[0])
    puts "=> " + user_message_lose
    puts
   when (user_choice == "r") && (computer_choice == game_choices[2])
    puts "=> " + user_message_win
    puts
   when (user_choice == "p") && (computer_choice == game_choices[1])
    puts "=> " + user_message_win
    puts
   when (user_choice == "p") && (computer_choice == game_choices[2])
    puts "=> " + user_message_lose
    puts
   when (user_choice == "s") && (computer_choice == game_choices[0])
    puts "=> " + user_message_win
    puts
   when (user_choice == "s") && (computer_choice == game_choices[1])
    puts "=> " + user_message_lose
    puts
   when (user_choice == "p") && (computer_choice == game_choices[0])
    puts "=> " + user_message_tie
    puts
   when (user_choice == "r") && (computer_choice == game_choices[1])
    puts "=> " + user_message_tie
    puts
   when (user_choice == "s") && (computer_choice == game_choices[2])
    puts "=> " + user_message_tie
    puts
   end 

  puts

  begin

    puts "=>Do you want play again? Y or N"
    continue = gets.chomp.downcase

  end until continue == "y" || continue == "n"

  puts

 end while continue == "y"
  