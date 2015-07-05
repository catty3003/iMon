require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

	test "project can not be saved without name" do
 	project = Project.new
 	assert !project.save
end

test "project can be saved with name, deadline and duraton" do
 project = Project.new
 project.name = "Eine Frage"
 project.deadline = Date.today + 7.days
 project.duration = 5.0
 assert project.save
end 

end
