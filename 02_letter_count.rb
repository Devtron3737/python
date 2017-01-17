# Write a function, `letter_count(str)` that takes a string and
# returns a hash mapping each letter to its frequency. Do not include
# spaces.
#
# Difficulty: 1/5

def letter_count(str)
letters = {}
letters.default = 0

	str.each_char do |letter| letters["#{letter}"] += 1 unless letter == " " end

		return letters
	end

puts letter_count("a bb ccc")
