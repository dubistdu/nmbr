i=1
num = 5
random = rand(1..100)

until i > num do
  puts "Pick your random number"
  number = gets.chomp
  number = number.to_i

  #puts "CHEAT MODE: #{random}"  <-- Good practice to check the code

  if number == random
    puts "Wow! You got it!"
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
  i +=1;
end

if i==5
puts "You lose!"
end
