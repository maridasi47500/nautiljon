require "test_helper"

class LightNovelsCommercesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_commerce = _light_novels_commerces(:one)
  end

  test "should get index" do
    get _light_novels_commerces_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_commerce_url
    assert_response :success
  end

  test "should create _light_novels_commerce" do
    assert_difference("LightNovelsCommerce.count") do
      post _light_novels_commerces_url, params: { _light_novels_commerce: { name: @_light_novels_commerce.name } }
    end

    assert_redirected_to _light_novels_commerce_url(LightNovelsCommerce.last)
  end

  test "should show _light_novels_commerce" do
    get _light_novels_commerce_url(@_light_novels_commerce)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_commerce_url(@_light_novels_commerce)
    assert_response :success
  end

  test "should update _light_novels_commerce" do
    patch _light_novels_commerce_url(@_light_novels_commerce), params: { _light_novels_commerce: { name: @_light_novels_commerce.name } }
    assert_redirected_to _light_novels_commerce_url(@_light_novels_commerce)
  end

  test "should destroy _light_novels_commerce" do
    assert_difference("LightNovelsCommerce.count", -1) do
      delete _light_novels_commerce_url(@_light_novels_commerce)
    end

    assert_redirected_to _light_novels_commerces_url
  end
end
