
require "./Expression.rb"
require "./Operand.rb"
require "./Operator.rb"
require "./FunctionOperator.rb"

class Calculator
	def self.evaluate(expression)
		firstOperand = expression.firstOperand.value
		secondOperand = expression.secondOperand.value
		operator = expression.operator

		if operator.is_a?(FunctionOperator) then
			operator.function.call(firstOperand, secondOperand)
		elsif operator.is_a?(Operator) then
			operatorMethod = firstOperand.method(operator.operator)
			operatorMethod.call(secondOperand)
		end
	end
end
