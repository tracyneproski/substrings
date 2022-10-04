# Odin Project - Substrings
# refactored with feedback

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(search, word_array)
  result = Hash.new(0)
  # word_array.map(&:downcase).each { |word|
  # downcase was used here and below in word.downcase, using it once should work, by removing it from 
  # here we can remove the extra map too. 
  word_array.each { |word|
    search.split(' ').each do |split|
      # Because you control the dictonary variable, downcase is not strictly needed, having said that 
      # this code is more robust because of downcase.  It works for cases when someone else passed a 
      # different dictonary to your code and forgot to downcase it there.
      
      # if split.downcase.include? word.downcase
      #   result.push(word)
      # end

      # Made a small modification here to avoid iterating over the results below.
      # This is the same logic, rubyist's prefer writing like this as its more compact. 
      # (Some ruby specific programming tools count the number of lines in a method and raise 
      # warnings when you go over the limit, so writing like this helps there too)
      # Sometimes the other way is more readable than this compact way, In those cases this style 
      # is not preferred. 
      result[word] += 1 if split.downcase.include? word.downcase
    end
  } # from brittany! when there is a multi line block, do / end is favored over {} split up


  # This is the correct logic, I have not used reduce like this, so it was hard for me to understand 
  # initially. One improvement that can be done is to do this operation in the loop above so that 
  # it doesn't have to be iterated again here.

  # final = result.reduce(Hash.new(0)) do |substr, occurs|
  #   substr[occurs] += 1
  #   substr
  # end

  return result
end


puts "What statement would you like to search?\n"
search = gets
search = search.chomp

# puts substrings("it", dictionary)
# puts substrings("below", dictionary)
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)

final_answer = substrings(search, dictionary)


puts "Here is your answer:\n"
puts final_answer