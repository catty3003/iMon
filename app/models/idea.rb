class Idea < ActiveRecord::Base
	belongs_to :project
	belongs_to :user

	validates_length_of :post, :maximum => 300
	validates :post, :project_id, :user_id, presence: true

end
