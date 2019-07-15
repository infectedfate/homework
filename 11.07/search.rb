require 'Find'
class Search
  attr_accessor :paths

  def initialize
    @paths = []
  end

  def start_search(search_directory = false, target)
    search_directory = ENV['HOME'] unless search_directory
    sp = target.split(".")
    target, ext = sp
    @paths = []
    Find.find("#{search_directory}") do |path|
    @paths << path if path =~ /\/#{target}\.#{ext}$/
    end
  end

  def write_result_in_file
    File.write(ENV['HOME'] + "/" + 'search_result.txt', @paths)
  end

  def show_search_result
    puts @paths
  end

end
