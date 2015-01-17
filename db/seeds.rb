File.readlines("db/fixtures/words").each do |row|
  Word.create(word: row.chomp)
end


# Second Method:
# File.open("db/fixtures/words", 'r').each_line do |row|
#   Word.create(word: row.chomp)
# end