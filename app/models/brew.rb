class Brew < ApplicationRecord
	validates :blend_name, :presence => true
	validates :origin, :presence => true
	validates :notes, :presence => true
	validates :strength, :inclusion => {:in => (1..5), :message => "must be between 1 and 5"}
	# Another way to validate a range:
	# validates :strength, :inclusion => 1..5

	has_many :purchases
end
