module Parent
	def self.included(base)
		base.include(Child_one)
		base.include(Child_two)
	end
	
	def foo
		puts 'foo'
	end

	module Child_one
		def bar
			puts 'bar'
		end
	end

	module Child_two
		def baz
			puts 'baz'
		end
	end

end

