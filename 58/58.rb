# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s.split(" ")[-1].size
end

puts length_of_last_word("Hello World")
puts length_of_last_word("   fly me   to   the moon  ")
puts length_of_last_word("luffy is still joyboy")