class Author < ApplicationRecord
	has_many :books, dependent: :destroy
	validates :name, uniqueness: true
	accepts_nested_attributes_for :books
end
