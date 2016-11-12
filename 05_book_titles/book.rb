class Book
# write your code here
	attr_writer :title

	def initialize
		@conjunctions = ['and', 'or']	
		@prepositions = ['in', 'the', 'of']
		@articles = ['a', 'an']
	end

	def title
		new_title = @title.capitalize
		new_title = new_title.split.map do |word| 

			if @conjunctions.include? word or @prepositions.include? word or @articles.include? word
				word
			else
				word.capitalize	
			end
		end.join(" ")

		new_title
	end
end
