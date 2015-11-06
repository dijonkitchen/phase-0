=begin
Create a Playlist from Driver Code

Jonathan Chen and Noah Heinrich worked on this challenge.
I spent [#] hours on this challenge.


Pseudocode
DEFINE a class called Song
  DEFINE an initialize method, accepts track and artist
    Set track to @track, and artist to @artist

    DEFINE a class method play
      Puts '...' , every 1 second, ten times

DEFINE a class called Playlist
  DEFINE an initialize method, accepts splat songs
    @songs = empty array
    arguments append to array

  DEFINE a class method add in Playlist
    Accepts splat songs
    Append songs to @songs

  DEFINE a class method num_of_tracks
    RETURN length of @songs

  DEFINE a class method remove
    Accepts a name of a song
    Delete song from playlist

  DEFINE a class method includes?
    Accepts a song
    Iterate through playlist
      IF playlist song equals song,
        RETURN true
    RETURN false

  DEFINE a class method play_all
    Iterate over playlist
      Call play on each song

  DEFINE a class method display
    Iterate through the playlist
      PUTS each song

=end
# Initial Solution
# class Song

#   attr_reader :track, :artist

#   def initialize (track, artist)
#     @track = track
#     @artist = artist
#   end

#   def play
#     5.times do
#       puts "..."
#       sleep(0.1)
#     end
#   end

# end

# class Playlist

#   attr_reader :songs

#   def initialize (*songs)
#     @songs = songs
#   end

#   def add (*songs)
#     songs.each do |song|
#       @songs << song
#     end
#   end

#   def num_of_tracks
#     @songs.length
#   end

#   def remove(song)
#     @songs.delete(song)
#   end

#   def includes?(song)
# #     @songs.each_index do |sng|
# #       if @songs[sng].track == song.track
# #         true
# #       end
# #     end
# #     false
#     @songs.include?(song)
#   end

#   def play_all
#     @songs.each do |song|
#       song.play
#     end
#   end

#   def display
#     @songs.each { |song|
#       puts song.track
#     }
#   end

# end

# Refactored Solution

class Song

  attr_reader :track, :artist

  def initialize (track, artist)
    @track = track
    @artist = artist
  end

  def play
    5.times do
      puts "..."
      sleep(0.1)
    end
  end

end

class Playlist

  attr_reader :songs

  def initialize (*songs)
    @songs = songs
  end

  def add (*songs)
    songs.each {|song| @songs << song}
  end

  def num_of_tracks
    @songs.length
  end

  def remove(song)
    @songs.delete(song)
  end

  def includes?(song)
    @songs.include?(song)
  end

  def play_all
    @songs.each {| song| song.play }
  end

  def display
    @songs.each { |song| puts song.track }
  end

end





# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display



# Reflection
=begin
What concepts did you review in this challenge?

Making classes, instance variables, class methods

What is still confusing to you about Ruby?

I didn't realize that when multiple arguments were passed into a method with splat that they would go in as an array.

What are you going to study to get more prepared for Phase 1?

Classes, inheritance, and and enumerable methods

=end
