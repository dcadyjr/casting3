require 'test_helper'

class AgentSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get agent_sessions_new_url
    assert_response :success
  end

end
