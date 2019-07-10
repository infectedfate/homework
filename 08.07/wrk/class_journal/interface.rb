module Interface
  MENU = {
    1 => 'stat',
    2 => 'show_marks',
    3 => 'overall',
    4 => 'top_five',
    5 => 'worst_five',
    6 => 'show_journal'
    }.freeze

    def info
      puts "-------------------------------------"
      puts '1. Вывести статистику по ученику'
      puts '2. Вывести оценки ученика по предмету'
      puts '3. Общая средняя статистика'
      puts '4. Показать 5 лучших учеников'
      puts '5. Показать 5 худших учеников'
      #puts '6. Написать письмо родителю'
      puts "-------------------------------------"
    end

    def run
    loop do
      info
      puts 'Введите пункт меню:'
      choice = gets.to_i
      send(command(choice))
      end
    end

    def command(cmd)
      MENU[cmd].to_s
    end

    def get_id
      puts "Введите id ученика"
      id = gets.to_i
    end

    def stat
      id = get_id
      average(id)
      rating(id)
    end

    def get_subj
      puts "Выберите предмет:"
      puts "1. Русский язык"
      puts "2. Математика"
      puts "3. Английский язык"
      puts "4. Окружающий мир"
      puts "5. Программирование"
      subj = gets.to_i
      @subjects[subj-1]
    end

    def letter(id)
      puts "Уважаемый родитель! Ваш"
      if gender(id) == :female
        puts "а дочь"
      else
        puts " сын"
      end
      puts "учится"
    end

    def show_marks
      show_marks_in_subject(get_id, get_subj)
    end
end
