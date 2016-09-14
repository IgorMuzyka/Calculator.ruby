
class Operator
	@operator = nil

	def initialize(operator)
		case operator
			when Symbol
				@operator = operator
			when String
				@operator = operator.to_sym
		end
	end

	def operator
		@operator
	end

	def to_s
		"#{@operator}"
	end
end
