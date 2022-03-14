require 'test_helper'

class Customer::ServiceControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get customer_service_index_url
    assert_response :success
  end

  test 'should get show' do
    get customer_service_show_url
    assert_response :success
  end
end
