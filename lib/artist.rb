require 'pry'

class Artist
  extend Memorable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

#find_by_name now exists in the module Findable for use by all classes.
  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

#reset_all now exists in the module Memorable for all classes.
  # def self.reset_all
  #   self.all.clear
  # end

#This method has been moved to module Memorable for use by all classes. 
  # def self.count
  #   @@artists.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
