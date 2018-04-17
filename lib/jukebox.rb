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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(songs)
  songs.each.with_index(1) do |value, index|
    puts "#{index}. #{value}"
  end
end



def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song, index|
    if song == input || "#{index + 1}" == input
      puts "Playing #{song}"
      return
    end
  end
  puts "Invalid input, please try again"
end



def exit_jukebox
  puts "Goodbye"
end



def run(songs)
  help
  
  loop do
    puts "Please enter a command:"
    answer = gets.chomp
    
    case answer
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        return
    end
  end
  
end
  