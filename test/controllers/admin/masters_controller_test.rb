require 'test_helper'

class Admin::MastersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_masters_index_url
    assert_response :success
  end

end
