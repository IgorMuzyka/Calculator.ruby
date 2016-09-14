
require "./Calculator.rb"

expression = Expression.new(Operand.new(3.14), Operand.new(360), Operator.new(:*))
expression = Expression.new(expression, Operand.new(725), Operator.new(:/))
puts "#{expression} = #{Calculator.evaluate(expression)}"
