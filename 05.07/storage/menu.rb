module Menu

  MENU = {
    1 => 'add_new_item',
    2 => 'delete_item',
    3 => 'update_item',
    4 => 'show_all_items',
    5 => 'break'
    
    }.freeze

    def info
      puts '1. Добавить товар'
      puts '2. Удалить товар'
      puts '3. Обновить товар'
      puts '4. Показать все товары'
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
end