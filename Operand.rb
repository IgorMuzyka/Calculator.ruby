
class Operand
	@value

	def initialize(value)
		@value = value
	end

	def value
		@value
	end

	def to_s
		"#{@value}"
	end
end
