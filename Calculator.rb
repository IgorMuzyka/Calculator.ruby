
require "./Expression.rb"
require "./Operand.rb"
require "./Operator.rb"

class Calculator
	def self.evaluate(expression)
		firstOperand = expression.firstOperand.value
		secondOperand = expression.secondOperand.value
		operator = expression.operator.operator

		operatorMethod = firstOperand.method(operator)
		operatorMethod.call secondOperand
	end
end
