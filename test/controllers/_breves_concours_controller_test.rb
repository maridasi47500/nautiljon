require "test_helper"

class BrevesConcoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_concour = _breves_concours(:one)
  end

  test "should get index" do
    get _breves_concours_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_concour_url
    assert_response :success
  end

  test "should create _breves_concour" do
    assert_difference("BrevesConcour.count") do
      post _breves_concours_url, params: { _breves_concour: { name: @_breves_concour.name } }
    end

    assert_redirected_to _breves_concour_url(BrevesConcour.last)
  end

  test "should show _breves_concour" do
    get _breves_concour_url(@_breves_concour)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_concour_url(@_breves_concour)
    assert_response :success
  end

  test "should update _breves_concour" do
    patch _breves_concour_url(@_breves_concour), params: { _breves_concour: { name: @_breves_concour.name } }
    assert_redirected_to _breves_concour_url(@_breves_concour)
  end

  test "should destroy _breves_concour" do
    assert_difference("BrevesConcour.count", -1) do
      delete _breves_concour_url(@_breves_concour)
    end

    assert_redirected_to _breves_concours_url
  end
end
