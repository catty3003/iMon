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

	test "is delayed" do
	 project = Project.new
	 project.deadline = Date.today - 10.days
	 assert project.is_delayed?
	end
	test "is not delayed" do
	 project = Project.new
	 project.deadline = Date.today + 10.days
	 assert !project.is_delayed?
	end
	test "is not delayed if deadline is today" do
	 project = Project.new
	 project.deadline = Date.today
	 assert !project.is_delayed?
	end

end
