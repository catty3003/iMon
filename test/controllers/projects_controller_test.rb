require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    request.env["HTTP_REFERER"] = "http://localhost:3000"
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:done)
    assert_not_nil assigns(:todo)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { deadline: @project.deadline, done: @project.done, duration: @project.duration, name: @project.name, user_id: @project.user_id }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { deadline: @project.deadline, done: @project.done, duration: @project.duration, name: @project.name, user_id: @project.user_id }
    assert_redirected_to :back  
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
