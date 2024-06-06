require "test_helper"

class DramasCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_culture = _dramas_cultures(:one)
  end

  test "should get index" do
    get _dramas_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_culture_url
    assert_response :success
  end

  test "should create _dramas_culture" do
    assert_difference("DramasCulture.count") do
      post _dramas_cultures_url, params: { _dramas_culture: { name: @_dramas_culture.name } }
    end

    assert_redirected_to _dramas_culture_url(DramasCulture.last)
  end

  test "should show _dramas_culture" do
    get _dramas_culture_url(@_dramas_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_culture_url(@_dramas_culture)
    assert_response :success
  end

  test "should update _dramas_culture" do
    patch _dramas_culture_url(@_dramas_culture), params: { _dramas_culture: { name: @_dramas_culture.name } }
    assert_redirected_to _dramas_culture_url(@_dramas_culture)
  end

  test "should destroy _dramas_culture" do
    assert_difference("DramasCulture.count", -1) do
      delete _dramas_culture_url(@_dramas_culture)
    end

    assert_redirected_to _dramas_cultures_url
  end
end
