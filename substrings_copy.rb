dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(search, word_array)
  result = []
  word_array.map(&:downcase).each { |word|
    search.split(' ').each do |split|
      if split.downcase.include? word.downcase
        result.push(word)
      end
    end
  }

  final = result.reduce(Hash.new(0)) do |substr, occurs|
    substr[occurs] += 1
    substr
  end
  return final
end


puts "What statement would you like to search?\n"
search = gets
search = search.chomp

final_answer = substrings(search, dictionary)


puts "Here is your answer:\n"
puts final_answer 



