require "test_helper"

class ExecutiveUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @executive_user = executive_users(:one)
  end

  test "should get index" do
    get executive_users_url
    assert_response :success
  end

  test "should get new" do
    get new_executive_user_url
    assert_response :success
  end

  test "should create executive_user" do
    assert_difference("ExecutiveUser.count") do
      post executive_users_url, params: { executive_user: { user_id: @executive_user.user_id } }
    end

    assert_redirected_to executive_user_url(ExecutiveUser.last)
  end

  test "should show executive_user" do
    get executive_user_url(@executive_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_executive_user_url(@executive_user)
    assert_response :success
  end

  test "should update executive_user" do
    patch executive_user_url(@executive_user), params: { executive_user: { user_id: @executive_user.user_id } }
    assert_redirected_to executive_user_url(@executive_user)
  end

  test "should destroy executive_user" do
    assert_difference("ExecutiveUser.count", -1) do
      delete executive_user_url(@executive_user)
    end

    assert_redirected_to executive_users_url
  end
end
