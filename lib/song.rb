require 'pry'

class Song
  extend Memorable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

#find_by_name now exists in the module Findable for use by all classes.
  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

#reset_all now exists in the module Memorable for use by all classes.
  # def self.reset_all
  #   @@songs.clear
  # end

  def to_param
    name.downcase.gsub(' ', '-')
  end

#This method has been moved to module Memorable for use by all classes. 
  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end
