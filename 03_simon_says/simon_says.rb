#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times=2)
	value = "#{word} " * times
	value.strip
end

def start_of_word(word, index)
	word[0...index]
end

def first_word(word)
	word.partition(" ").first
	# word.split(" ").first
end

def titleize(words)
	words = words.capitalize
	excludes = ["and", "over", "the"]
	words.split.map { |word| (excludes.include? word) ? word: word.capitalize }.join(" ")
end