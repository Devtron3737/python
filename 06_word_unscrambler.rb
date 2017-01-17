# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5
#
# helper method to find out if its an anagram? if it is, push to list
#
#
def word_unscrambler(scrambled_word, dictionary)

  winner = []
  @scrambled_word = scrambled_word
  dictionary.each { |word| winner.push(word) if anagram?(word) == true }
  return winner
end

def anagram?(input)
  word_sorted = @scrambled_word.split("").sort
  word_unsorted = []
  input.to_s.each_char { |letter| word_unsorted.push(letter)}
  return true if word_sorted == word_unsorted.sort
  return false
end


puts word_unscrambler("cat", ["tic", "toc", "tac", "toe"])
#puts ["tac"]
puts word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
#puts ["turn", "runt", "nurt"]
