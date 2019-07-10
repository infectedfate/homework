require_relative 'journal'
require_relative 'marks'

class Statistic
  attr_accessor :students, :subjects

  def initialize
    @subjects = ["Русский язык", "Математика", "Английский язык", "Окружающий мир", "Программирование"]
    @students = []
    @a_students = []
    @b_students = []
    @c_students = []
  end
  
  def init
    journal = Journal.new
    journal.generate_students
    journal.save_in_file
    marks = Marks.new("Журнал")
    marks.generate_marks
    @students = journal.students
  end

  def average(id)
    average_mark_for_all_subject = []
    @subjects.each do |s|
      average_mark_for_each_subject = []
      file = File.open(s, 'r')
      string = file.readlines[id-1]
      marks = string.split(': ')
      marks = marks.drop(1)
      marks = marks[0].split(" ")
      marks = marks.map(&:to_i)
      average_mark_for_each_subject << marks.sum.to_f / marks.length.to_f
      average_mark_for_all_subject << marks.sum.to_f / marks.length.to_f
      puts "Средние оценки по предмету #{s}:"
      puts average_mark_for_each_subject
    end
    puts "Средняя оценка по все предметам:"
    puts average = average_mark_for_all_subject.sum / average_mark_for_all_subject.length
    average.round(3)
  end

  def perfomance
    perf = 0
    perf_hash = {}
    File.open("Успеваемость", "wb") do |f|
      @students.each_with_index do |student, idx|
        perf = average(idx)
        perf_hash[student]= perf
        perf_hash = perf_hash.sort_by(&:last).reverse.  to_h
      end
      perf_hash
    end
    File.open("Успеваемость", "wb") do |f|
      perf_hash.each do |k,v|
        f.puts "#{k} : #{v}"
      end
    end
  end

  def rating(id)
   file = File.open("Успеваемость", "r")
   string = file.readlines[id-1]
   string.chomp
  end

  def show_marks_in_subject(id, subject)
    File.open(subject, "r") do |f|
      string = f.readlines[id-1]
      puts string
      array = string.split(":")
      name = array[0]
    end
  end

  def a_b_c
    mark = ''
    name = ''
    file = File.open("Успеваемость", "r")
    file.each do |line|
     string = file.read
     array = string.split(" :")
     name = array[0].chomp
     mark = array[1].chomp.to_f
    end
    if mark > 4.000
      @a_students << name
    elsif mark > 3.000 && mark < 4.000
      @b_students << name
    else
      @c_students << name
    end 
  end

  def top_five
    file = File.open("Успеваемость", "r")
    five = file.readlines[0,5]
    puts five
  end

  def worst_five
    file = File.open("Успеваемость", "r")
    five = file.readlines[(25..30)]
    puts five
  end

  def gender?(id)
    last_letter_of_surname = @students[id+1].split(" ")[0]
    if last_letter_of_surname[last_letter_of_surname.length - 1] == "a"
      :female
    else
      :male
    end
  end
end
