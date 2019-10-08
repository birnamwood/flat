require 'test_helper'

class MunicipalitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get municipalities_show_url
    assert_response :success
  end

end
