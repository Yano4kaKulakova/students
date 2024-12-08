require "test_helper"

class ListKlassStudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get list_klass_students_index_url
    assert_response :success
  end

  test "should get search" do
    get list_klass_students_search_url
    assert_response :success
  end
end
