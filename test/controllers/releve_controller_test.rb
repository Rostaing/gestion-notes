require "test_helper"

class ReleveControllerTest < ActionDispatch::IntegrationTest
  test "should get releve_notes" do
    get releve_releve_notes_url
    assert_response :success
  end
end
