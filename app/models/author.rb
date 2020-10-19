class Author < ApplicationRecord
	has_many :books, :inverse_of => :book
	validates :name, uniqueness: true
	accepts_nested_attributes_for :books
end
