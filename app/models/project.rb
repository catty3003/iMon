class Project < ActiveRecord::Base

	belongs_to :user
	has_many :ideas

	validates :name, :deadline, presence: true
	validates :duration, presence: true, numericality: true 

	def is_delayed?
	 self.deadline < Date.today
	end

	def distance_from_now_in_days
	  (self.deadline - Date.today).to_i     
	end
	
end
