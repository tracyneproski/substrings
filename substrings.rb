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
    if word.include? searched
      result.push(word)
    end 
  }
  final = result.reduce(Hash.new(0)) do |substr, occurs|
    substr[occurs] +=1
    substr
    return final
  end
  return final
end



'''
def substrings(searched, word_array)
  result = []
  word_array.each { |word|
    if word.include? searched
      result.push(word)
    end 
  }
  return result
end


def full_sentence(string, word_array)
  split string into parts
  run substring for each part
  return hash
end
'''


