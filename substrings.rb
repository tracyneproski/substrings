#Odin Project - Substrings
'''
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }
'''


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, word_array)
  for each object in word_array
    if object.include? word #or somehow subset of word
      push to hash
    else
      go to next
    end
    return hash #maybe here
  end
  return hash #or here
end

def full_sentence(string, word_array)
  split string into parts
  run substring for each part
  return hash
end



