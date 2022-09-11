require "test_helper"

class Api::V1::OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test 'should forbid orders for unlogged' do
    get api_v1_orders_url, as: :json
    assert_response :forbidden #The 403 (Forbidden) status code indicates that the server understood the request but refuses to authorize it
  end

end
