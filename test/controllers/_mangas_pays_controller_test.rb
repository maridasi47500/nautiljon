require "test_helper"

class MangasPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_pay = _mangas_pays(:one)
  end

  test "should get index" do
    get _mangas_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_pay_url
    assert_response :success
  end

  test "should create _mangas_pay" do
    assert_difference("MangasPay.count") do
      post _mangas_pays_url, params: { _mangas_pay: { name: @_mangas_pay.name } }
    end

    assert_redirected_to _mangas_pay_url(MangasPay.last)
  end

  test "should show _mangas_pay" do
    get _mangas_pay_url(@_mangas_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_pay_url(@_mangas_pay)
    assert_response :success
  end

  test "should update _mangas_pay" do
    patch _mangas_pay_url(@_mangas_pay), params: { _mangas_pay: { name: @_mangas_pay.name } }
    assert_redirected_to _mangas_pay_url(@_mangas_pay)
  end

  test "should destroy _mangas_pay" do
    assert_difference("MangasPay.count", -1) do
      delete _mangas_pay_url(@_mangas_pay)
    end

    assert_redirected_to _mangas_pays_url
  end
end
