#main menu
def main_menu
  puts "--- CheatSheet ---"
  puts "1) Command Line"
  puts "2) Search"
  puts "3) Exit"
  puts "Make a selection"
  get_input
end

def get_input
  @input = gets.chomp.to_i
  check_input
end

# input
def check_input
  if @input == 1
    command_menu
  elsif @input == 2
    puts "Enter Search Inquiry"
    search = gets.strip
    puts `man #{search}`
  elsif @input == 3
    exit 0
  else
    main_menu
  end
end

#command_menu
def command_menu
  puts "1. cp"
  puts "2. mv"
  puts "3. cd"
  puts "4. Main Menu"
  puts "Make a selection"
  get_choice
end

def get_choice
  @choice = gets.chomp.to_i
  new_input
end

#man inouts using case
def new_input
  case @choice
  when 1
    puts `man cp`
  when 2
    puts `man mv`
  when 3
    puts `man cd`
  when 4
    main_menu
  else
    puts "Invalid input"
    command_menu
  end
end

#loop main menu
while true
  main_menu
end
