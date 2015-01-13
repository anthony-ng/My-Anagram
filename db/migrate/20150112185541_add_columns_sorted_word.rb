class AddColumnsSortedWord < ActiveRecord::Migration
  def change
    add_column :words, :sorted_word, :string

    Word.all.each do |row|
      row.sorted_word = row.word.downcase.chars.sort.join
      row.save
    end
  end
end
