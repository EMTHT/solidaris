require 'test_helper'

class AssociationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get associations_index_url
    assert_response :success
  end

end
