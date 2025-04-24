WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def clear_screen
  system 'cls'
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, separator = ', ', last_separator = 'or')
  result = ''
  last_idx = arr.length - 1

  return arr.first.to_s + " " + last_separator + " " + arr.last.to_s if arr.size == 2

  arr.each_with_index do |el, idx|
    result << el.to_s
    result << separator unless idx == last_idx
    result << last_separator + " " if idx == last_idx - 1
  end

  result
end

def find_at_risk_square(brd, marker)
  WINNING_LINES.each do |line|
    values = brd.values_at(line[0], line[1], line[2])
    if values.count(marker) == 2 && values.count(INITIAL_MARKER) == 1
      return line[values.index(INITIAL_MARKER)]
    end
  end

  nil
end

def place_piece!(board, current_player)
  if current_player == 'player'
    player_turn!(board)
  else
    computer_turn!(board)
  end
end

def alternate_player(current_player)
  current_player == 'player' ? 'computer' : 'player'
end

def player_turn!(brd)
  square = ''
  loop do
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_turn!(brd)
  square = find_at_risk_square(brd, COMPUTER_MARKER)
  square ||= find_at_risk_square(brd, PLAYER_MARKER)
  square ||= 5 if brd[5] == INITIAL_MARKER
  square ||= empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    values = brd.values_at(line[0], line[1], line[2])
    if values.count(PLAYER_MARKER) == 3
      return 'Player'
    elsif values.count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# Main game
prompt "Welcome to tictactoe!"
sleep(1.5)

first_move = ''

loop do
  prompt "Who should go first? (p for Player, c for Computer, s for Suprise)"
  first_move = gets.chomp.downcase

  if ['p', 'c', 's'].include?(first_move)
    break
  else
    prompt "Invalid choice. Please enter 'p', 'c', or 's'."
  end
end

if first_move == 's'
  first_move = ['p', 'c'].sample
  prompt "Computer randomly choses: #{first_move == 'p' ? 'Player' : 'Computer'}."
  sleep(1.5)
end

loop do
  scorecard = { player: 0, computer: 0 }

  loop do
    board = initialize_board

    if first_move == 'p'
      turn = 'player'
    else
      turn = 'computer'
    end
    
    current_player = first_move == 'p' ? 'player' : 'computer'

    loop do
      clear_screen
      display_board(board)
      place_piece!(board, current_player)
      break if someone_won?(board) || board_full?(board)
      current_player = alternate_player(current_player)
    end

    clear_screen
    display_board(board)

    winner = detect_winner(board)

    if winner
      prompt "#{winner} won this round!"
      scorecard[:player] += 1 if winner == 'Player'
      scorecard[:computer] += 1 if winner == 'Computer'
    else
      prompt "It's a tie!"
    end

    prompt "Score - Player: #{scorecard[:player]}, Computer: #{scorecard[:computer]}"

    unless scorecard[:player] == 5 || scorecard[:computer] == 5
      prompt "Press Enter to continue to the next round..." 
      gets
    end

    if scorecard[:player] == 5
      prompt "Player is the MATCH WINNER."
      break
    elsif scorecard[:computer] == 5
      prompt "Computer is the MATCH WINNER."
      break
    end
  end

  prompt "Would you like to play another match to 5? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing tictactoe!"
