def count_vowels(string):
    num_vowels=0
    for char in string:
        if char in "aeiou":
           num_vowels = num_vowels+1
    return num_vowels