require "test_helper"

class MangasJvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_jv_plu = _mangas_jv_plus(:one)
  end

  test "should get index" do
    get _mangas_jv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_jv_plu_url
    assert_response :success
  end

  test "should create _mangas_jv_plu" do
    assert_difference("MangasJvPlu.count") do
      post _mangas_jv_plus_url, params: { _mangas_jv_plu: { name: @_mangas_jv_plu.name } }
    end

    assert_redirected_to _mangas_jv_plu_url(MangasJvPlu.last)
  end

  test "should show _mangas_jv_plu" do
    get _mangas_jv_plu_url(@_mangas_jv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_jv_plu_url(@_mangas_jv_plu)
    assert_response :success
  end

  test "should update _mangas_jv_plu" do
    patch _mangas_jv_plu_url(@_mangas_jv_plu), params: { _mangas_jv_plu: { name: @_mangas_jv_plu.name } }
    assert_redirected_to _mangas_jv_plu_url(@_mangas_jv_plu)
  end

  test "should destroy _mangas_jv_plu" do
    assert_difference("MangasJvPlu.count", -1) do
      delete _mangas_jv_plu_url(@_mangas_jv_plu)
    end

    assert_redirected_to _mangas_jv_plus_url
  end
end
