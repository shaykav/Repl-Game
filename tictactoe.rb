board = {
"1": " ",
"2": " ",
"3": " ",
"4": " ",
"5": " ",
"6": " ",
"7": " ",
"8": " ",
"9": " "
}

available_spots = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]


puts "Welcome to Tic Tac Toe!"
sleep 1
puts "Would you like to be x or o?"

while letter = gets.chomp
case letter
  when "x"
    break
  when "o"
    break
  else
    puts "Please select x or o:"
  end
end

if letter == "x"
  my_letter = "o"
else
  my_letter = "x"
end

puts "Where on the board would you like to go (position 1-9)?"
puts "1|2|3"
puts "4|5|6"
puts "7|8|9"

while position = gets.chomp
  if available_spots.include? position
    break
  else
    puts "Please select any number 1-9:"
  end
end

board[position.to_sym] = letter
available_spots.delete(position)

puts board[:"1"] + "|" + board[:"2"] + "|" + board[:"3"]
puts board[:"4"] + "|" + board[:"5"] + "|" + board[:"6"]
puts board[:"7"] + "|" + board[:"8"] + "|" + board[:"9"]



i = 2
while i < 10
  if ((board[:"1"] == "x" && board[:"2"] == "x" && board[:"3"] == "x") ||
    (board[:"4"] == "x" && board[:"5"] == "x" && board[:"6"] == "x") ||
    (board[:"7"] == "x" && board[:"8"] == "x" && board[:"9"] == "x") ||
    (board[:"1"] == "x" && board[:"4"] == "x" && board[:"7"] == "x") ||
    (board[:"2"] == "x" && board[:"5"] == "x" && board[:"8"] == "x") ||
    (board[:"3"] == "x" && board[:"6"] == "x" && board[:"9"] == "x") ||
    (board[:"1"] == "x" && board[:"5"] == "x" && board[:"9"] == "x") ||
    (board[:"3"] == "x" && board[:"5"] == "x" && board[:"7"] == "x")) then
    puts "X WON THE GAME!"
    break
  end

  if ((board[:"1"] == "o" && board[:"2"] == "o" && board[:"3"] == "o") ||
    (board[:"4"] == "o" && board[:"5"] == "o" && board[:"6"] == "o") ||
    (board[:"7"] == "o" && board[:"8"] == "o" && board[:"9"] == "o") ||
    (board[:"1"] == "o" && board[:"4"] == "o" && board[:"7"] == "o") ||
    (board[:"2"] == "o" && board[:"5"] == "o" && board[:"8"] == "o") ||
    (board[:"3"] == "o" && board[:"6"] == "o" && board[:"9"] == "o") ||
    (board[:"1"] == "o" && board[:"5"] == "o" && board[:"9"] == "o") ||
    (board[:"3"] == "o" && board[:"5"] == "o" && board[:"7"] == "o")) then
    puts "O WON THE GAME!"
    break
  end

  if i.even?
    sleep 3
    puts "My turn!"
    my_position = available_spots.sample
    board[my_position.to_sym] = my_letter
    available_spots.delete(my_position)
    puts board[:"1"] + "|" + board[:"2"] + "|" + board[:"3"]
    puts board[:"4"] + "|" + board[:"5"] + "|" + board[:"6"]
    puts board[:"7"] + "|" + board[:"8"] + "|" + board[:"9"]
  else
    sleep 2
    puts "Your turn! Where next?"
    while position = gets.chomp
      if board[position.to_sym] != "x" && board[position.to_sym] != "o" &&
        available_spots.include?(position)
        break
      elsif ["1", "2", "3", "4", "5", "6", "7", "8", "9"].include?(position) == false
        puts "Please select any number 1-9:"
      else
        puts "This spot is already taken. Pick another number 1-9:"
      end
    end
    board[position.to_sym] = letter
    available_spots.delete(position)
    puts board[:"1"] + "|" + board[:"2"] + "|" + board[:"3"]
    puts board[:"4"] + "|" + board[:"5"] + "|" + board[:"6"]
    puts board[:"7"] + "|" + board[:"8"] + "|" + board[:"9"]
  end

  i += 1
end

sleep 2
puts "_____"
puts board[:"1"] + "|" + board[:"2"] + "|" + board[:"3"]
puts board[:"4"] + "|" + board[:"5"] + "|" + board[:"6"]
puts board[:"7"] + "|" + board[:"8"] + "|" + board[:"9"]
puts "GAME OVER"
