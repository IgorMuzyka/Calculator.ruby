
class FunctionOperator
	@function = nil

	def initialize(&function)
		@function = function
	end

	def function
		@function
	end

	def to_s
		"custom function"
	end
end
