def run
  puts "What would you like to listen to?"
  command = gets.chomp

  if ["itunes", "i"].include?(command.downcase)
    open_itunes
  elsif ["spotify", "spot", "s"].include?(command.downcase)
    open_spotify
  elsif ["q", "quit", "exit", "end"].include?(command.downcase)
    end_program
  else
    search_web(command)
  end
end

def open_itunes
  system 'open ~/../../Applications/iTunes.app'
end

def open_spotify
  system 'open ~/../../Applications/Spotify.app'
end

def search_web(search)
  puts "YouTube or SoundCloud?"
  answer = gets.chomp.downcase
  if ["s", "soundcloud", "sound cloud", "sc", "sound", "cloud"].include?(answer)
    soundcloud(search)
  elsif ["youtube", "you tube", "tube", "you", "yt", "y", "u"].include?(answer)
    youtube(search)
  end
end

def youtube(search)
  interest = search.downcase.tr(" ", "+")
  search_string = "results?search_query=#{interest}"
  system "open http://youtube.com/#{search_string}"
end

def soundcloud(search)
  search_string = search.downcase.gsub(" ", "%20")
  system "open https://soundcloud.com/search?q=#{search_string}"
end

def end_program
end

run