# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(str):
    i = len(str)
    reversed = []
    while i >= 0:
        reversed.append(str[i])
        i -= 1
    
