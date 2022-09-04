require "test_helper"

class Api::V1::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should show user" do
    get api_v1_user_url(@user), as: :json
    assert_response :success

    json_response = JSON.parse(self.response.body)
    assert_equal @user.email, json_response['email']
  end

  test "should create user" do
    assert_difference('User.count') do
      post api_v1_users_url, params: { user: { 
        email: 'test@test.org', password: '123456'} }, as: :json
    end
    assert_response :created # Http status code 201
  end

  test "should not create user with taken email" do
    assert_no_difference('User.count') do
      post api_v1_users_url, params: { user: {
        email: @user.email, password: '123456' } }, as: :json
    end
    assert_response :unprocessable_entity # Http code 422 Unprocessable Entity    
    # The HyperText Transfer Protocol (HTTP) 422 Unprocessable Entity response status code indicates
    # that the server understands the content type of the request entity, and the syntax of the
    # request entity is correct, but it was unable to process the contained instructions    
  end

  test "should update user" do
    patch api_v1_user_url(@user), params: { user: {
      email: @user.email, password: 'default' } }, as: :json
    assert_response :success # Http status code 200
  end
  
  test "should not update user when invalid params are sent" do
    patch api_v1_user_url(@user), params: { user: {
      email: 'bad_email', password: '123456' } }, as: :json
    assert_response :unprocessable_entity # Http code 422 Unprocessable Entity
  end 

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete api_v1_user_url(@user), as: :json
    end
    assert_response :no_content #Http status code 204
  end
end
