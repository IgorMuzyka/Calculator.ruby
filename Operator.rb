
class Operator
	@operator = nil

	def initialize(operator)
		@operator = operator
	end

	def operator
		@operator
	end

	def to_s
		"#{@operator}"
	end
end
