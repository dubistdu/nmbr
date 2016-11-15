def pick_number
  puts "Pick your random number: "
  gets.chomp.to_i
end

def winning_message
  puts "✨ ✨ ✨ Wow, you rock!! 🍻 🍻 🍻"
end

i=1
num = 5
random = rand(1..100)
numbers = []

until i > num do
  number = pick_number
  if numbers.include?(number)             #checking if the number user just entered exist in array.
    puts "What is wrong with you? 😤 😤 😤"  #To make it appear right after typing a new number,
  end                                     #place it right under user input

  numbers << number
  #puts "CHEAT MODE: #{random}"  #<-- Good practice to check the code
  if number == random
    winning_message
    break
  end

  case
    when number < random
      puts "You were too low"
    when number > random
      puts "You are too high"
    else
      puts "Try again!"
  end
  i += 1
end

if i >= num # if i == num, it won't put out puts because the condition is to loop until i>num
  puts "😵 😵 You lose 😵 😵!"
end


#p numbers
