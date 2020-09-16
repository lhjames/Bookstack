class Book < ApplicationRecord
	belongs_to :author
	validates :name, uniqueness: :true
end
