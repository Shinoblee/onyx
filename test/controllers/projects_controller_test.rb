require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { family_code: @project.family_code, model_code: @project.model_code, model_year: @project.model_year, multiple_dev_flow: @project.multiple_dev_flow, plant_id: @project.plant_id, project_code: @project.project_code } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { family_code: @project.family_code, model_code: @project.model_code, model_year: @project.model_year, multiple_dev_flow: @project.multiple_dev_flow, plant_id: @project.plant_id, project_code: @project.project_code } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
