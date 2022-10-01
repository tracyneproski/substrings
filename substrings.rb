#Odin Project - Substrings
'''
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
'''


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(searched, word_array)
  result = []
  word_array.each { |word|
    if word.include? searched #or somehow subset of word
      result.push(word)
    end 
  }
  return result
end

'''
def full_sentence(string, word_array)
  split string into parts
  run substring for each part
  return hash
end
'''


