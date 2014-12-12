# require_relative '../models/word.rb'

get '/:word' do
  @word = params[:word]
  @anagrams = Word.anagrams(@word)
  # Look in app/views/anagrams/index.erb
  erb :"anagrams/index"
end

