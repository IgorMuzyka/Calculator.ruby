
require "./Expression.rb"
require "./Operand.rb"

class Calculator
	def self.evaluate(expression)
		firstOperand = expression.firstOperand.value
		secondOperand = expression.secondOperand.value
		operator = firstOperand.method(expression.operator)
		operator.call secondOperand
	end
end
