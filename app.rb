# frozen_string_literal: false

arithmetic_expression = gets.chomp

aparted_arithmetic_expression = []
pos = 0
arithmetic_expression.each_char do |character|
  if character >= '0' && character <= '9'
    digits = aparted_arithmetic_expression[pos].to_i.to_s
    digits.concat(character)
    aparted_arithmetic_expression[pos] = digits
  elsif character != ' ' && (character == '+' || character == '-' || character == '*' || character == '/')
    pos += 1
    aparted_arithmetic_expression[pos] = character
    pos += 1
  end
end

first_portion = aparted_arithmetic_expression[0].to_i
operator = aparted_arithmetic_expression[1].to_s
last_portion = aparted_arithmetic_expression[2].to_i

result = 0

case operator
when '+'
  result = first_portion + last_portion
when '-'
  result = first_portion - last_portion
when '*'
  result = first_portion * last_portion
when '/'
  result = first_portion / last_portion
end

puts result.to_s
