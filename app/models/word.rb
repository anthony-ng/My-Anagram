# require_relative '../controllers/anagrams.rb'

class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(args)
    anagrams_array = []

    #looping the table and sort the corresponding words and push it to the array
    Word.all.each do |word_object|
      if word_object.word.downcase.split("").sort! == args.downcase.split("").sort!
        anagrams_array << word_object.word
      end
    end
    anagrams_array
  end
end
