require 'test_helper'

class ActorsProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actors_project = actors_projects(:one)
  end

  test "should get index" do
    get actors_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_actors_project_url
    assert_response :success
  end

  test "should create actors_project" do
    assert_difference('ActorsProject.count') do
      post actors_projects_url, params: { actors_project: { actor_id: @actors_project.actor_id, project_id: @actors_project.project_id } }
    end

    assert_redirected_to actors_project_url(ActorsProject.last)
  end

  test "should show actors_project" do
    get actors_project_url(@actors_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_actors_project_url(@actors_project)
    assert_response :success
  end

  test "should update actors_project" do
    patch actors_project_url(@actors_project), params: { actors_project: { actor_id: @actors_project.actor_id, project_id: @actors_project.project_id } }
    assert_redirected_to actors_project_url(@actors_project)
  end

  test "should destroy actors_project" do
    assert_difference('ActorsProject.count', -1) do
      delete actors_project_url(@actors_project)
    end

    assert_redirected_to actors_projects_url
  end
end
