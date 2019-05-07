songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "\nI accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  count = 0
  songs.each { |song|
    puts "#{count + 1}. #{song}"
    count += 1
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  userInput = gets.chomp
  nums = 1..songs.length
  strNums = nums.map { |num|
    num + 1
    num.to_s
  }
  if songs.include?(userInput)
    puts "Playing #{userInput}"
  elsif strNums.include?(userInput)
    puts "Playing #{songs[(userInput.to_i)-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  userCommand = gets.chomp
  command = userCommand.downcase

  until command == "exit"
    if command == "list"
      list(songs)
      run
    elsif command == "play"
      play(songs)
      run
    elsif command == "help"
      help
      run
    end
  end
  exit_jukebox
end
