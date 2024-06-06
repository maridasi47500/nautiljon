require "test_helper"

class GoodiesArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_artbook = _goodies_artbooks(:one)
  end

  test "should get index" do
    get _goodies_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_artbook_url
    assert_response :success
  end

  test "should create _goodies_artbook" do
    assert_difference("GoodiesArtbook.count") do
      post _goodies_artbooks_url, params: { _goodies_artbook: { name: @_goodies_artbook.name } }
    end

    assert_redirected_to _goodies_artbook_url(GoodiesArtbook.last)
  end

  test "should show _goodies_artbook" do
    get _goodies_artbook_url(@_goodies_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_artbook_url(@_goodies_artbook)
    assert_response :success
  end

  test "should update _goodies_artbook" do
    patch _goodies_artbook_url(@_goodies_artbook), params: { _goodies_artbook: { name: @_goodies_artbook.name } }
    assert_redirected_to _goodies_artbook_url(@_goodies_artbook)
  end

  test "should destroy _goodies_artbook" do
    assert_difference("GoodiesArtbook.count", -1) do
      delete _goodies_artbook_url(@_goodies_artbook)
    end

    assert_redirected_to _goodies_artbooks_url
  end
end
