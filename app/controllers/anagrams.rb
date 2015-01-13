# Controller
get '/:word' do
  # @word = "Cat"
  @word = params[:word]

  start_time = Time.now

  # Input: [#<act>, #<cat>, #<tac>]
  # Select all anagrams EXCEPT the #<cat> itself
  # @anagrams = [#<act>, #<tac>]
  @anagrams = Word.anagram(@word).select {|row|
    row.word.downcase != @word.downcase
  }

  end_time = Time.now

  @time_difference = end_time - start_time

  erb :"anagrams/index"
end
