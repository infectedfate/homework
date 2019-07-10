class Marks

  attr_accessor :journal, :subject

  def initialize(file)
    @file = file
    @subjects = ["russian", "math", "english", "world", "programming"]
    @journal = []
  end

  def read_file
   file = File.open(@file, 'r')
   file.each do |line|
     @journal << line.chomp
   end
   @journal = @journal.drop(3)
  end

  def random_marks
    marks = ''
    gen = [(2..3), (2..5), (4..5)]
    marks_gen = gen.sample
    80.times { marks += " #{rand(marks_gen)}" }
    marks
  end

  def generate_marks
    read_file
    @subjects.each do |s|
     File.open(s, "wb") do |file|
      @journal.each do |el|
       file.puts el + " :" + random_marks
        end
      end
    end
    puts "Созданый файлы с оценками"
  end
end
