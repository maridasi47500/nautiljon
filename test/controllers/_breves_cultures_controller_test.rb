require "test_helper"

class BrevesCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_culture = _breves_cultures(:one)
  end

  test "should get index" do
    get _breves_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_culture_url
    assert_response :success
  end

  test "should create _breves_culture" do
    assert_difference("BrevesCulture.count") do
      post _breves_cultures_url, params: { _breves_culture: { name: @_breves_culture.name } }
    end

    assert_redirected_to _breves_culture_url(BrevesCulture.last)
  end

  test "should show _breves_culture" do
    get _breves_culture_url(@_breves_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_culture_url(@_breves_culture)
    assert_response :success
  end

  test "should update _breves_culture" do
    patch _breves_culture_url(@_breves_culture), params: { _breves_culture: { name: @_breves_culture.name } }
    assert_redirected_to _breves_culture_url(@_breves_culture)
  end

  test "should destroy _breves_culture" do
    assert_difference("BrevesCulture.count", -1) do
      delete _breves_culture_url(@_breves_culture)
    end

    assert_redirected_to _breves_cultures_url
  end
end
