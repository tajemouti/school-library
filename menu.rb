def display_menu
  puts "\nPlease choose an option by entering a number:"
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def process_option(choice, app)
  case choice
  when 1
    app.books_manager.list_books
  when 2
    app.people_manager.list_people
  when 3
    app.people_manager.create_person
  when 4
    app.books_manager.create_book
  when 5
    app.rentals_manager.create_rental
  when 6
    app.rentals_manager.list_rentals_for_person
  else
    puts 'Invalid option. Please choose a valid option.'
  end
end
