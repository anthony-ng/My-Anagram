# Controller

get '/:word' do
  # @word = "Cat"
  @word = params[:word]

  start_time = Time.now

  # Input: [#<act>, #<cat>]
  # Select all anagrams EXCEPT the #<cat> itself
  # @anagrams = [#<act>]
  @anagrams = Word.anagram(@word).select {|row|
    row.word.downcase != @word.downcase
  }

  end_time = Time.now

  @time_difference = end_time - start_time

  erb :"anagrams/index"
end

