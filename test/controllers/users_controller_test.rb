require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { academic_title: @user.academic_title, auth_token: @user.auth_token, company_name: @user.company_name, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, password: @user.password, position_name: @user.position_name, salutation: @user.salutation, show_onboarding_screen: @user.show_onboarding_screen } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { academic_title: @user.academic_title, auth_token: @user.auth_token, company_name: @user.company_name, email: @user.email, first_name: @user.first_name, last_name: @user.last_name, password: @user.password, position_name: @user.position_name, salutation: @user.salutation, show_onboarding_screen: @user.show_onboarding_screen } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
