require "test_helper"

class MangasLnPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_ln_plu = _mangas_ln_plus(:one)
  end

  test "should get index" do
    get _mangas_ln_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_ln_plu_url
    assert_response :success
  end

  test "should create _mangas_ln_plu" do
    assert_difference("MangasLnPlu.count") do
      post _mangas_ln_plus_url, params: { _mangas_ln_plu: { name: @_mangas_ln_plu.name } }
    end

    assert_redirected_to _mangas_ln_plu_url(MangasLnPlu.last)
  end

  test "should show _mangas_ln_plu" do
    get _mangas_ln_plu_url(@_mangas_ln_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_ln_plu_url(@_mangas_ln_plu)
    assert_response :success
  end

  test "should update _mangas_ln_plu" do
    patch _mangas_ln_plu_url(@_mangas_ln_plu), params: { _mangas_ln_plu: { name: @_mangas_ln_plu.name } }
    assert_redirected_to _mangas_ln_plu_url(@_mangas_ln_plu)
  end

  test "should destroy _mangas_ln_plu" do
    assert_difference("MangasLnPlu.count", -1) do
      delete _mangas_ln_plu_url(@_mangas_ln_plu)
    end

    assert_redirected_to _mangas_ln_plus_url
  end
end
