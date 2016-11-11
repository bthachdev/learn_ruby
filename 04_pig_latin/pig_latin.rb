#write your code here
def translate(words)
	vowel = ['a', 'e', 'u', 'i', 'o']
	two_consonants = ['ch', 'qu', 'th', 'br']
	three_consonants = ['thr', 'sch', 'squ']

	words.split.map do |word|

		if three_consonants.include? word[0..2]
			word << word.slice!(0..2) + "ay"
		elsif two_consonants.include? word[0..1]
			word << word.slice!(0..1) + "ay"
		elsif vowel.include? word[0]
			word << "ay"
		else
			word << word.slice!(0) + "ay"
		end
		
		word

	end.join(" ")
end