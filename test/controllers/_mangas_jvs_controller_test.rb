require "test_helper"

class MangasJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_jv = _mangas_jvs(:one)
  end

  test "should get index" do
    get _mangas_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_jv_url
    assert_response :success
  end

  test "should create _mangas_jv" do
    assert_difference("MangasJv.count") do
      post _mangas_jvs_url, params: { _mangas_jv: { name: @_mangas_jv.name } }
    end

    assert_redirected_to _mangas_jv_url(MangasJv.last)
  end

  test "should show _mangas_jv" do
    get _mangas_jv_url(@_mangas_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_jv_url(@_mangas_jv)
    assert_response :success
  end

  test "should update _mangas_jv" do
    patch _mangas_jv_url(@_mangas_jv), params: { _mangas_jv: { name: @_mangas_jv.name } }
    assert_redirected_to _mangas_jv_url(@_mangas_jv)
  end

  test "should destroy _mangas_jv" do
    assert_difference("MangasJv.count", -1) do
      delete _mangas_jv_url(@_mangas_jv)
    end

    assert_redirected_to _mangas_jvs_url
  end
end
