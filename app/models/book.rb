class Book < ApplicationRecord
	belongs_to :author, required: false
	validates :name, uniqueness: true
end
