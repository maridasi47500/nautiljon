require "test_helper"

class DramasUniversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_univer = _dramas_univers(:one)
  end

  test "should get index" do
    get _dramas_univers_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_univer_url
    assert_response :success
  end

  test "should create _dramas_univer" do
    assert_difference("DramasUniver.count") do
      post _dramas_univers_url, params: { _dramas_univer: { name: @_dramas_univer.name } }
    end

    assert_redirected_to _dramas_univer_url(DramasUniver.last)
  end

  test "should show _dramas_univer" do
    get _dramas_univer_url(@_dramas_univer)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_univer_url(@_dramas_univer)
    assert_response :success
  end

  test "should update _dramas_univer" do
    patch _dramas_univer_url(@_dramas_univer), params: { _dramas_univer: { name: @_dramas_univer.name } }
    assert_redirected_to _dramas_univer_url(@_dramas_univer)
  end

  test "should destroy _dramas_univer" do
    assert_difference("DramasUniver.count", -1) do
      delete _dramas_univer_url(@_dramas_univer)
    end

    assert_redirected_to _dramas_univers_url
  end
end
