require "test_helper"

class LightNovelsArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_artbook = _light_novels_artbooks(:one)
  end

  test "should get index" do
    get _light_novels_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_artbook_url
    assert_response :success
  end

  test "should create _light_novels_artbook" do
    assert_difference("LightNovelsArtbook.count") do
      post _light_novels_artbooks_url, params: { _light_novels_artbook: { name: @_light_novels_artbook.name } }
    end

    assert_redirected_to _light_novels_artbook_url(LightNovelsArtbook.last)
  end

  test "should show _light_novels_artbook" do
    get _light_novels_artbook_url(@_light_novels_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_artbook_url(@_light_novels_artbook)
    assert_response :success
  end

  test "should update _light_novels_artbook" do
    patch _light_novels_artbook_url(@_light_novels_artbook), params: { _light_novels_artbook: { name: @_light_novels_artbook.name } }
    assert_redirected_to _light_novels_artbook_url(@_light_novels_artbook)
  end

  test "should destroy _light_novels_artbook" do
    assert_difference("LightNovelsArtbook.count", -1) do
      delete _light_novels_artbook_url(@_light_novels_artbook)
    end

    assert_redirected_to _light_novels_artbooks_url
  end
end
