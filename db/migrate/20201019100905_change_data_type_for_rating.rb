class ChangeDataTypeForRating < ActiveRecord::Migration[6.0]
  def change
  	change_column :books, :rating, :integer, default: 0, null: false
  end
end
