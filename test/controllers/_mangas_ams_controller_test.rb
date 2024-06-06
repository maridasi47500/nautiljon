require "test_helper"

class MangasAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_am = _mangas_ams(:one)
  end

  test "should get index" do
    get _mangas_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_am_url
    assert_response :success
  end

  test "should create _mangas_am" do
    assert_difference("MangasAm.count") do
      post _mangas_ams_url, params: { _mangas_am: { name: @_mangas_am.name } }
    end

    assert_redirected_to _mangas_am_url(MangasAm.last)
  end

  test "should show _mangas_am" do
    get _mangas_am_url(@_mangas_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_am_url(@_mangas_am)
    assert_response :success
  end

  test "should update _mangas_am" do
    patch _mangas_am_url(@_mangas_am), params: { _mangas_am: { name: @_mangas_am.name } }
    assert_redirected_to _mangas_am_url(@_mangas_am)
  end

  test "should destroy _mangas_am" do
    assert_difference("MangasAm.count", -1) do
      delete _mangas_am_url(@_mangas_am)
    end

    assert_redirected_to _mangas_ams_url
  end
end
