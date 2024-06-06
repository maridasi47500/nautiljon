require "test_helper"

class DramasOriginesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_origine = _dramas_origines(:one)
  end

  test "should get index" do
    get _dramas_origines_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_origine_url
    assert_response :success
  end

  test "should create _dramas_origine" do
    assert_difference("DramasOrigine.count") do
      post _dramas_origines_url, params: { _dramas_origine: { name: @_dramas_origine.name } }
    end

    assert_redirected_to _dramas_origine_url(DramasOrigine.last)
  end

  test "should show _dramas_origine" do
    get _dramas_origine_url(@_dramas_origine)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_origine_url(@_dramas_origine)
    assert_response :success
  end

  test "should update _dramas_origine" do
    patch _dramas_origine_url(@_dramas_origine), params: { _dramas_origine: { name: @_dramas_origine.name } }
    assert_redirected_to _dramas_origine_url(@_dramas_origine)
  end

  test "should destroy _dramas_origine" do
    assert_difference("DramasOrigine.count", -1) do
      delete _dramas_origine_url(@_dramas_origine)
    end

    assert_redirected_to _dramas_origines_url
  end
end
