class Project < ActiveRecord::Base

	validates :name, :deadline, presence: true
	validates :duration, presence: true, numericality: true 
end
