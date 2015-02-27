class Foobar

	def self.baz(input)
		input.map! { |i| i.to_i + 2}
		input.map! { |i| i if i.even? }
		input.uniq!
		input.select! {|x| !x.nil? }
		input.select! {|x| x < 10}
		return input.inject(:+)
	end
end

