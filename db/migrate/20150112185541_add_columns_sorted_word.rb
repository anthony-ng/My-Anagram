class AddColumnsSortedWord < ActiveRecord::Migration
  def change
    add_column :words, :sorted_word, :string

    # Define the sorted_word column:
    # Word.all.each do |row|
    #   # #<cat>.sorted_word = "act"
    #   row.sorted_word = "abc"
    #   # row.word.downcase.chars.sort.join
    #   row.save
    # end

  end
end
