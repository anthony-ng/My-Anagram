# Model
class Word < ActiveRecord::Base
  def self.anagram(input_word)
    # Convert the input into a sorted anagram
    # i.e. input_word: "Cat"
    #      sorted_search: "act"
    sorted_search = input_word.downcase.chars.sort.join

    # Return an array containing all rows where the [sorted_word] column matches [sorted_search] above
    # i.e. [#<act>, #<cat>, #<tac>]
    self.all.select{ |row| sorted_search == row.sorted_word }
  end
end
