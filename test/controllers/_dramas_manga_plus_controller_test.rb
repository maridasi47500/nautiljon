require "test_helper"

class DramasMangaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_manga_plu = _dramas_manga_plus(:one)
  end

  test "should get index" do
    get _dramas_manga_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_manga_plu_url
    assert_response :success
  end

  test "should create _dramas_manga_plu" do
    assert_difference("DramasMangaPlu.count") do
      post _dramas_manga_plus_url, params: { _dramas_manga_plu: { name: @_dramas_manga_plu.name } }
    end

    assert_redirected_to _dramas_manga_plu_url(DramasMangaPlu.last)
  end

  test "should show _dramas_manga_plu" do
    get _dramas_manga_plu_url(@_dramas_manga_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_manga_plu_url(@_dramas_manga_plu)
    assert_response :success
  end

  test "should update _dramas_manga_plu" do
    patch _dramas_manga_plu_url(@_dramas_manga_plu), params: { _dramas_manga_plu: { name: @_dramas_manga_plu.name } }
    assert_redirected_to _dramas_manga_plu_url(@_dramas_manga_plu)
  end

  test "should destroy _dramas_manga_plu" do
    assert_difference("DramasMangaPlu.count", -1) do
      delete _dramas_manga_plu_url(@_dramas_manga_plu)
    end

    assert_redirected_to _dramas_manga_plus_url
  end
end
