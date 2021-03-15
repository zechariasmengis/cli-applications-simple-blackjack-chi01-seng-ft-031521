require 'pry'

def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  return total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_total)
  prompt_user
  return_value = get_user_input
  
  if return_value == 'h'
    current_total += deal_card
    current_total
    elsif return_value == 's'
    current_total
  else
    invalid_command
    hit?(current_total)
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_total = initial_round
  until current_total > 21 do
    current_total = hit?(current_total)
    display_card_total(current_total)
  end
end_game(current_total)
end
    
