require './app'
require './menu'

def main
  puts 'Welcome to School Library App!'
  app = App.new

  loop do
    display_menu
    choice = gets.chomp.to_i

    if choice == 7
      puts 'Thank you for using this app!'
      break
    end

    process_option(choice, app)
  end
end

main
