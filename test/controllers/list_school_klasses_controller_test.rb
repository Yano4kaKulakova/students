require "test_helper"

class ListSchoolKlassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_school_klasses_index_url
    assert_response :success
  end

  test "should get search" do
    get list_school_klasses_search_url
    assert_response :success
  end
end
