class Thankification < ApplicationRecord
	has_many :gratitudes, inverse_of: :thankification

	validates :gratitudes, presence: true
	accepts_nested_attributes_for :gratitudes
end
