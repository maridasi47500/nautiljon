require "test_helper"

class BrevesMagazinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_magazine = _breves_magazines(:one)
  end

  test "should get index" do
    get _breves_magazines_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_magazine_url
    assert_response :success
  end

  test "should create _breves_magazine" do
    assert_difference("BrevesMagazine.count") do
      post _breves_magazines_url, params: { _breves_magazine: { name: @_breves_magazine.name } }
    end

    assert_redirected_to _breves_magazine_url(BrevesMagazine.last)
  end

  test "should show _breves_magazine" do
    get _breves_magazine_url(@_breves_magazine)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_magazine_url(@_breves_magazine)
    assert_response :success
  end

  test "should update _breves_magazine" do
    patch _breves_magazine_url(@_breves_magazine), params: { _breves_magazine: { name: @_breves_magazine.name } }
    assert_redirected_to _breves_magazine_url(@_breves_magazine)
  end

  test "should destroy _breves_magazine" do
    assert_difference("BrevesMagazine.count", -1) do
      delete _breves_magazine_url(@_breves_magazine)
    end

    assert_redirected_to _breves_magazines_url
  end
end
