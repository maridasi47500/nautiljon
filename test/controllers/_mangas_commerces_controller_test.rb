require "test_helper"

class MangasCommercesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_commerce = _mangas_commerces(:one)
  end

  test "should get index" do
    get _mangas_commerces_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_commerce_url
    assert_response :success
  end

  test "should create _mangas_commerce" do
    assert_difference("MangasCommerce.count") do
      post _mangas_commerces_url, params: { _mangas_commerce: { name: @_mangas_commerce.name } }
    end

    assert_redirected_to _mangas_commerce_url(MangasCommerce.last)
  end

  test "should show _mangas_commerce" do
    get _mangas_commerce_url(@_mangas_commerce)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_commerce_url(@_mangas_commerce)
    assert_response :success
  end

  test "should update _mangas_commerce" do
    patch _mangas_commerce_url(@_mangas_commerce), params: { _mangas_commerce: { name: @_mangas_commerce.name } }
    assert_redirected_to _mangas_commerce_url(@_mangas_commerce)
  end

  test "should destroy _mangas_commerce" do
    assert_difference("MangasCommerce.count", -1) do
      delete _mangas_commerce_url(@_mangas_commerce)
    end

    assert_redirected_to _mangas_commerces_url
  end
end
