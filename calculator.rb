#An Calculator for add, subtract, multiply, divide
#Written by Wang Chun-Chi

def is_a_number?(num)
  is_integer?(num) || is_float?(num)
end

def is_integer?(num)
  Integer(num) rescue false
end

def is_float?(num)
  Float(num) rescue false
end


def is_valid_operation?(operation)
  (1..4).cover?(operation.to_i)
end

def say(msg)
  puts "#{msg}"
end

def user_input
  input = gets.chomp
  if is_a_number?(input)
    input
  else
    say "******Please enter a number!!******"
    user_input
  end
end

loop do
  say "Please enter the first number: "
  num1 = user_input
  say "Please enter the second number: "
  num2 = user_input
  operation = ''
  loop do
    say "Which operation do you want??"
    say "1) add, 2) subtract, 3) multiply, 4) divide"
    operation = gets.chomp

    if is_valid_operation?(operation)
      break
    else
      say "******Enter Valid Operation Number!!*******"
    end
  end

  answer = case operation
    when "1"
      is_float?(num1) || is_float?(num2) ? (num1.to_f + num2.to_f ) : (num1.to_i + num2.to_i)
    when "2"
      is_float?(num1) || is_float?(num2) ? (num1.to_f - num2.to_f ) : (num1.to_i - num2.to_i)
    when "3"
      is_float?(num1) || is_float?(num2) ? (num1.to_f * num2.to_f ) : (num1.to_i * num2.to_i)
    when "4"
      num1.to_f / num2.to_f
  end
  say "Answer = #{answer}"
  say "Enter anything to continue or 'N' for exit"
  break if gets.chomp.downcase == 'n'
end





