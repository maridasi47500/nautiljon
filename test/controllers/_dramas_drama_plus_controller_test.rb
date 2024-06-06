require "test_helper"

class DramasDramaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_drama_plu = _dramas_drama_plus(:one)
  end

  test "should get index" do
    get _dramas_drama_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_drama_plu_url
    assert_response :success
  end

  test "should create _dramas_drama_plu" do
    assert_difference("DramasDramaPlu.count") do
      post _dramas_drama_plus_url, params: { _dramas_drama_plu: { name: @_dramas_drama_plu.name } }
    end

    assert_redirected_to _dramas_drama_plu_url(DramasDramaPlu.last)
  end

  test "should show _dramas_drama_plu" do
    get _dramas_drama_plu_url(@_dramas_drama_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_drama_plu_url(@_dramas_drama_plu)
    assert_response :success
  end

  test "should update _dramas_drama_plu" do
    patch _dramas_drama_plu_url(@_dramas_drama_plu), params: { _dramas_drama_plu: { name: @_dramas_drama_plu.name } }
    assert_redirected_to _dramas_drama_plu_url(@_dramas_drama_plu)
  end

  test "should destroy _dramas_drama_plu" do
    assert_difference("DramasDramaPlu.count", -1) do
      delete _dramas_drama_plu_url(@_dramas_drama_plu)
    end

    assert_redirected_to _dramas_drama_plus_url
  end
end
