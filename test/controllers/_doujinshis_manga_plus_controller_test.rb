require "test_helper"

class DoujinshisMangaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_manga_plu = _doujinshis_manga_plus(:one)
  end

  test "should get index" do
    get _doujinshis_manga_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_manga_plu_url
    assert_response :success
  end

  test "should create _doujinshis_manga_plu" do
    assert_difference("DoujinshisMangaPlu.count") do
      post _doujinshis_manga_plus_url, params: { _doujinshis_manga_plu: { name: @_doujinshis_manga_plu.name } }
    end

    assert_redirected_to _doujinshis_manga_plu_url(DoujinshisMangaPlu.last)
  end

  test "should show _doujinshis_manga_plu" do
    get _doujinshis_manga_plu_url(@_doujinshis_manga_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_manga_plu_url(@_doujinshis_manga_plu)
    assert_response :success
  end

  test "should update _doujinshis_manga_plu" do
    patch _doujinshis_manga_plu_url(@_doujinshis_manga_plu), params: { _doujinshis_manga_plu: { name: @_doujinshis_manga_plu.name } }
    assert_redirected_to _doujinshis_manga_plu_url(@_doujinshis_manga_plu)
  end

  test "should destroy _doujinshis_manga_plu" do
    assert_difference("DoujinshisMangaPlu.count", -1) do
      delete _doujinshis_manga_plu_url(@_doujinshis_manga_plu)
    end

    assert_redirected_to _doujinshis_manga_plus_url
  end
end
