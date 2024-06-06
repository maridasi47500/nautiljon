require "test_helper"

class MangasAmPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_am_plu = _mangas_am_plus(:one)
  end

  test "should get index" do
    get _mangas_am_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_am_plu_url
    assert_response :success
  end

  test "should create _mangas_am_plu" do
    assert_difference("MangasAmPlu.count") do
      post _mangas_am_plus_url, params: { _mangas_am_plu: { name: @_mangas_am_plu.name } }
    end

    assert_redirected_to _mangas_am_plu_url(MangasAmPlu.last)
  end

  test "should show _mangas_am_plu" do
    get _mangas_am_plu_url(@_mangas_am_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_am_plu_url(@_mangas_am_plu)
    assert_response :success
  end

  test "should update _mangas_am_plu" do
    patch _mangas_am_plu_url(@_mangas_am_plu), params: { _mangas_am_plu: { name: @_mangas_am_plu.name } }
    assert_redirected_to _mangas_am_plu_url(@_mangas_am_plu)
  end

  test "should destroy _mangas_am_plu" do
    assert_difference("MangasAmPlu.count", -1) do
      delete _mangas_am_plu_url(@_mangas_am_plu)
    end

    assert_redirected_to _mangas_am_plus_url
  end
end
