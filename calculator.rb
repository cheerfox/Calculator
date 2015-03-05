#An Calculator for add, subtract, multiply, divide
#Written by Wang Chun-Chi

def is_a_number?(num)
  num.to_i.to_s == num.to_s || num.to_f.to_s == num.to_s
end

def is_valid_operation?(operation)
  (1..4).cover?(operation.to_i)
end

def say(msg)
  puts "#{msg}"
end

begin
  end_flag = false
  num1 = ''
  num2 = ''
  operation = ''

  loop do
    say "Please enter the first number: "
    num1 = gets.chomp

    if is_a_number?(num1)
      break
    else
      say "******Please enter a number!!******"
    end
  end
  
  loop do
    say "Please enter the second number: "
    num2 = gets.chomp

    if is_a_number?(num2)
      break
    else
      say "******Please enter a number!!*******"
    end
  end

  loop do
    say "Which operation do you want??"
    say "1) add, 2) subtract, 3) multiply, 4) divide"
    operation = gets.chomp

    if is_valid_operation? operation
      break
    else
      say "******Enter Valid Operation Number!!*******"
    end
  end

  answer = case operation
    when "1"
      num1.to_i + num2.to_i
    when "2"
      num1.to_i - num2.to_i
    when "3"
      num1.to_i * num2.to_i
    when "4"
      num1.to_f / num2.to_f
  end
  say "Answer = #{answer}"
  say "Enter anything to continue or 'N' for exit"
  leave = true if gets.chomp == 'N'
  say " "

end while !leave





