class Artist
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @songs = []
  end

  def add_song(song)
    @songs<<song
  end

  def songs
  @songs
end

def self.all
  @@all
end

def save
  @@all<<self
end

def self.find_or_create_by_name(name)
  if self.all.find{|x| x.name == name} == nil
    artist = self.new(name)
    artist
  else self.all.find{|x| x.name == name}
end
end

def print_songs
@songs.each {|element| puts "#{element.name}"}
end

end
