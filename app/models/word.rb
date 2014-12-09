# require_relative '../controllers/anagrams.rb'

class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams
    anagrams_array = []

    #looping the table and sort the corresponding words and push it to the array
    Words.all.each do |word_object|
      if word_object.word.downcase.split(" ") == self.word.downcase.split(" ")
        anagrams_array << word_object
      end
    end
    anagrams_array
  end
end
