def pick_number
  puts "Pick your random number: "
  gets.chomp.to_i
end

def winning_message
  puts "✨✨✨ Wow, you rock!! 🍻🍻🍻"
end

i=1
num = 5
random = rand(1..100)

until i > num do
  number = pick_number

  #puts "Pick your random number"
  #number = gets.chomp
  #number = number.to_i
  puts "CHEAT MODE: #{random}"  #<-- Good practice to check the code
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
  puts "😵😵 You lose 😵😵!"
end
