
require "./Calculator.rb"

simpleExpression = Expression.new(Operand.new(3.14), Operand.new(360), Operator.new(:*))
simpleExpression = Expression.new(simpleExpression, Operand.new(725), Operator.new(:/))
puts "#{simpleExpression} = #{Calculator.evaluate(simpleExpression)}"

arrayOperator = lambda {|a, b| a | b}
arrayExpression = Expression.new(Operand.new([1,2,3,4]), Operand.new([5,6,7,8]), FunctionOperator.new(&arrayOperator))
puts "#{arrayExpression} = #{Calculator.evaluate(arrayExpression)}"
