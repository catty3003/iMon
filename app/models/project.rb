class Project < ActiveRecord::Base

	validates :name, :deadline, presence: true
	validates :duration, presence: true, numericality: true 

	def is_delayed?
	 self.deadline < Date.today
	end
	
end
