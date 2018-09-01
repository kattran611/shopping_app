

# class Methods
class App
  attr_accessor :customer, :money
  def initialize
    @inventory = [
      {item: "tarimasu", price: 2.50, quantity: 4},
      {item: "tres leches", price: 3.75, quantity: 5},
      {item: "brownie", price: 2.00, quantity: 6},
      {item: "fruit tart", price: 4.00, quantity: 5},
      {item: "chocolate cake", price: 3.50, quanity: 7},
      {item: "eclair", price: 2.75, quantity: 10},
      {item: "cheesecake", price: 5.00, quantity: 8},
      {item: "apple pie", price: 5.00, quantity: 9}
    ]

    # @menu_list = [
    #   "View desserts on hand",
    #   "Buy something",
    #   "Edit",
    #   "Balance",
    #   "Exit"
    # ]

    greeting
  end

  def greeting
    puts "Welcome to Sweets!"
    puts "What is your name, sweetie?"
    @name = gets.strip
    puts "How much money do you have?"
    @money = gets.to_f
    puts "Welcome #{@name}, please choose an option from the menu."
    @customer = customer
    @money = money
    menu
  end

  def menu
    puts "----------Menu-----------"
    puts "1) View desserts on hand"
    puts "2) Buy"
    puts "3) edit cart"
    puts "4) View my balance"
    puts "5) Exit"
    option = gets.to_i
    menu_option(option)
  end


  def print_inventory
    @inventory.each_with_index do |item, index|
       puts "#{index+1}: #{item[:item]}, #{item[:price]}, #{item[:quantity]}"
    end
  end


  def buy
    # print_inventory
    puts "What would you like to purchase?"
    purchase = gets.to_i
    puts "What quantity?"
    qty = gets.strip.to_i
    # math not set up yet
    # price = @inventory[@buy_item-1][:price] * qty
    # menu_option
  end

  def balance
    puts "You have #{@money} remaining.."
  end



  def menu_option(number)
    case number
      when 1
        # this will print out inventory
        print_inventory

      when 2
        buy
      when 3
        puts "Edit my cart"
        # not set up yet
      when 4
        puts "view my balance"
        balance
      when 5
        puts "Thank you for shopping at Sweets! Have a nice day!"
        exit
      else
        puts "Please make a valid selection"

    end
    menu
  end

end





app = App.new
