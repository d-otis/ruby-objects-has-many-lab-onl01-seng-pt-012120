require "pry"

class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def songs
    Song.all.collect {|song| song.artist == self}
  end

  def add_song(name)
    song = Song.new(name)
    song.artist = self
  end

end