
require "./Operand.rb"
require "./Calculator.rb"

class Expression < Operand # can be optioned as an operand
	@firstOperand = nil
	@secondOperand = nil
	@operator = nil

	def initialize(firstOperand, secondOperand, operator)
		@firstOperand = firstOperand
		@secondOperand = secondOperand
		@operator = operator
	end

	def value
		if @value == nil then
			@value = Calculator.evaluate(self)
		end

		@value
	end

	def firstOperand
		@firstOperand
	end

	def secondOperand
		@secondOperand
	end

	def operator
		@operator
	end

	def to_s
		"(#{@firstOperand} #{@operator} #{@secondOperand})"
	end
end
