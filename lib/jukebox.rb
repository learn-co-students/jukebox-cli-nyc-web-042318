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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) {|song, index| puts "#{index}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if songs.include?(song_name)
    puts "Playing #{song_name}"
  elsif song_name.to_s == song_name.to_i.to_s
    song_name = song_name.to_i - 1
    if songs.include?(songs[song_name.to_i])
    puts "Playing #{songs[song_name.to_i]}"
    else puts "Invalid input, please try again"
    end
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
  command = 
  until command == "exit"
  command = gets.chomp
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
    end
   puts "Please enter a command:" unless command == "exit"
  end
  exit_jukebox
end
