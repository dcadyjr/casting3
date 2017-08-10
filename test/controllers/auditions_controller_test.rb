require 'test_helper'

class AuditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @audition = auditions(:one)
  end

  test "should get index" do
    get auditions_url
    assert_response :success
  end

  test "should get new" do
    get new_audition_url
    assert_response :success
  end

  test "should create audition" do
    assert_difference('Audition.count') do
      post auditions_url, params: { audition: { actor_id: @audition.actor_id, attended: @audition.attended, role_id: @audition.role_id, time: @audition.time } }
    end

    assert_redirected_to audition_url(Audition.last)
  end

  test "should show audition" do
    get audition_url(@audition)
    assert_response :success
  end

  test "should get edit" do
    get edit_audition_url(@audition)
    assert_response :success
  end

  test "should update audition" do
    patch audition_url(@audition), params: { audition: { actor_id: @audition.actor_id, attended: @audition.attended, role_id: @audition.role_id, time: @audition.time } }
    assert_redirected_to audition_url(@audition)
  end

  test "should destroy audition" do
    assert_difference('Audition.count', -1) do
      delete audition_url(@audition)
    end

    assert_redirected_to auditions_url
  end
end
