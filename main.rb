
require "./Calculator.rb"

expression = Expression.new(Operand.new(3.14), Operand.new(360), :*)
expression = Expression.new(expression, Operand.new(725), :/)
puts "#{expression} = #{Calculator.evaluate(expression)}"
