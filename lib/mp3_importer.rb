class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end
  def files
  Dir.entries('./spec/fixtures')
  end
  def import(filenames)
  filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end
