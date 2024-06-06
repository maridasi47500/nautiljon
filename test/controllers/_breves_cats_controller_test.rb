require "test_helper"

class BrevesCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_cat = _breves_cats(:one)
  end

  test "should get index" do
    get _breves_cats_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_cat_url
    assert_response :success
  end

  test "should create _breves_cat" do
    assert_difference("BrevesCat.count") do
      post _breves_cats_url, params: { _breves_cat: { name: @_breves_cat.name } }
    end

    assert_redirected_to _breves_cat_url(BrevesCat.last)
  end

  test "should show _breves_cat" do
    get _breves_cat_url(@_breves_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_cat_url(@_breves_cat)
    assert_response :success
  end

  test "should update _breves_cat" do
    patch _breves_cat_url(@_breves_cat), params: { _breves_cat: { name: @_breves_cat.name } }
    assert_redirected_to _breves_cat_url(@_breves_cat)
  end

  test "should destroy _breves_cat" do
    assert_difference("BrevesCat.count", -1) do
      delete _breves_cat_url(@_breves_cat)
    end

    assert_redirected_to _breves_cats_url
  end
end
