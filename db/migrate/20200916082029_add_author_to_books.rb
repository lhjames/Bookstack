class AddAuthorToBooks < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :author, default: false, index: true
  end
end
