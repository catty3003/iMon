class Idea < ActiveRecord::Base
	belongs_to :project
	belongs_to :user

	validates_length_of :post, :maximum => 300

end
