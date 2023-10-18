require './app'
require './menu'
require 'json'

def main
  puts 'Welcome to School Library App!'
  app = App.new
  app.load_data

  loop do
    display_menu
    choice = gets.chomp.to_i

    if choice == 7
      app.save_data
      puts 'Thank you for using this app!'
      break
    end

    process_option(choice, app)
  end
end

main
