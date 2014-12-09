File.open("db/fixtures/words", "r").each_line do |word|
   Word.create(word: word.chomp)
end
