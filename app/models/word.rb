# Model
class Word < ActiveRecord::Base
  # Required when using private
  before_save :create_sorted_word

  def self.anagram(input_word)
    # Convert the input into a sorted anagram
    # i.e. input_word: "Cat"
    #      sorted_search: "act"
    sorted_search = input_word.downcase.chars.sort.join

    # Return an array containing all rows where the [sorted_word] column matches [sorted_search] above
    # i.e. [#<act>, #<cat>]
    # Option 1:
    # self.all.select{ |row| sorted_search == row.sorted_word }

    #Option 2:
    Word.where(sorted_word: sorted_search)
  end

  # If we don't perform it inside migration file:
  private

  def create_sorted_word
    self.sorted_word = word.chars.sort.join
  end

end
