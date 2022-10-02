#Odin Project - Substrings
'''
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
=> { "below" => 1, "low" => 1 }

> substrings("Howdy partner, sit down! Hows it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

array.map(&:downcase).include?(string)
'''


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(searched, word_array)
  result = []
  word_array.map(&:downcase).each { |word|
    if searched.downcase.include? word.downcase
      result.push(word)
    end
  }

  final = result.reduce(Hash.new(0)) do |substr, occurs|
    substr[occurs] += 1
    substr
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


