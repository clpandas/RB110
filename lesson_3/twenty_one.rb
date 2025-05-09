SUITS = ['H', 'C', 'D', 'S']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
SUIT_SYMBOLS = {
  "H" => "♥",
  "D" => "♦",
  "C" => "♣",
  "S" => "♠"
}

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []

  SUITS.each do |suit|
    VALUES.each do |value|
      deck << [suit, value]
    end
  end

  deck.shuffle
end

def display_suit(card)
  suit, value = card
  "#{value}#{SUIT_SYMBOLS[suit]}"
end

def format_hand(cards)
  cards.map { |card| display_suit(card) }.join(" ")
end

def get_player_choice
  valid_hits = ['h', 'hit']
  valid_stays = ['s', 'stay']

  loop do
    prompt "Choose: (h)it or (s)tay"
    input = gets.chomp.strip.downcase

    return :hit if valid_hits.include?(input)
    return :stay if valid_stays.include?(input)

    prompt "Invalid input. Please enter 'h' or 's' (or 'hit' or 'stay')."
  end
end

def calculate_total(cards)
  values = cards.map do |card|
    case card[1]
    when 'A' then 11
    when 'K', 'Q', 'J' then 10
    else card[1].to_i
    end
  end

  total = values.sum

  values.select { |value| value == 'A' }.count.times do
    total -= 10 if total > 21
  end

  total
end

def busted?(cards)
  calculate_total(cards) > 21
end

def determine_result(player_cards, dealer_cards)
  player_total = calculate_total(player_cards)
  return :player_busted if player_total > 21

  dealer_total = calculate_total(dealer_cards)
  return :dealer_busted if dealer_total > 21

  return :player if player_total > dealer_total
  return :dealer if dealer_total > player_total

  :tie
end

def display_result(player_cards, dealer_cards)
  result = determine_result(player_cards, dealer_cards)

  case result
  when :player_busted
    prompt "You busted! The dealer wins!"
  when :dealer_busted
    prompt "The dealer busted! You win!"
  when :player
    prompt "You win!"
  when :dealer
    prompt "The dealer wins!"
  when :tie
    prompt "It's a tie!"
  end
end

def play_again?
  loop do
    prompt "Would you like to play again? (y/n)"
    input = gets.chomp.strip.downcase

    return true if input.start_with?('y')
    return false if input.start_with?('n')

    prompt "Invalid input. Please enter 'y' or 'n'."
  end
end


prompt "Welcome to Twenty-One!"
sleep(2)

# main loop
loop do
  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "The dealer has #{display_suit(dealer_cards[0])} and unknown"
  sleep(1)
  prompt "You have #{display_suit(player_cards[0])} and #{display_suit(player_cards[1])}"
  prompt "Your total is: #{calculate_total(player_cards)}"
  sleep(1)

  # player turn
  loop do
    player_turn = get_player_choice

    if player_turn == :hit
      player_cards << deck.pop
      prompt "You chose: hit!"
      sleep(1.5)
      prompt "Your cards are now: #{format_hand(player_cards)}"
      prompt "Your total is: #{calculate_total(player_cards)}"
      sleep(0.5)
    end

    break if player_turn == :stay || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "You stayed with #{calculate_total(player_cards)}"
    sleep(0.5)
  end

  prompt "It's the dealer's turn.."
  sleep(1)

  loop do
    break if calculate_total(dealer_cards) >= 17

    prompt "The dealer hits!"
    sleep(1.5)
    dealer_cards << deck.pop
    prompt "The dealer cards are now: #{format_hand(dealer_cards)}"
    prompt "The dealer total is: #{calculate_total(dealer_cards)}"
    sleep(1)
  end

  if busted?(dealer_cards)
    sleep(1)
    display_result(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "The dealer stays with: #{calculate_total(dealer_cards)}"
    sleep(1)
  end

  prompt "--The dealer has #{format_hand(dealer_cards)}--"
  prompt "The dealer total is: #{calculate_total(dealer_cards)}"
  prompt "--You have #{format_hand(player_cards)}--"
  prompt "Your total is: #{calculate_total(player_cards)}"
  sleep(1)

  display_result(player_cards, dealer_cards)

  break unless play_again?
  sleep(1)
end

prompt "Thank you for playing Twenty-One!!"
