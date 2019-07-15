module Menu

  MENU = {
    1 => 'add_new_good',
    2 => 'delete',
    3 => 'update',
    4 => 'total',
    5 => 'show_all_goods',
    6 => 'show_all_prices',
    }.freeze

    def info
      puts '1. Добавить товар'
      puts '2. Удалить товар'
      puts '3. Обновить товар'
      puts '4. Показать сумму стоимости всех товаров'
      puts '5. Показать все товары'
      puts '6. Показать все цены'
      puts '0. Выход'
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
end