require "test_helper"

class DoujinshisArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_artbook = _doujinshis_artbooks(:one)
  end

  test "should get index" do
    get _doujinshis_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_artbook_url
    assert_response :success
  end

  test "should create _doujinshis_artbook" do
    assert_difference("DoujinshisArtbook.count") do
      post _doujinshis_artbooks_url, params: { _doujinshis_artbook: { name: @_doujinshis_artbook.name } }
    end

    assert_redirected_to _doujinshis_artbook_url(DoujinshisArtbook.last)
  end

  test "should show _doujinshis_artbook" do
    get _doujinshis_artbook_url(@_doujinshis_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_artbook_url(@_doujinshis_artbook)
    assert_response :success
  end

  test "should update _doujinshis_artbook" do
    patch _doujinshis_artbook_url(@_doujinshis_artbook), params: { _doujinshis_artbook: { name: @_doujinshis_artbook.name } }
    assert_redirected_to _doujinshis_artbook_url(@_doujinshis_artbook)
  end

  test "should destroy _doujinshis_artbook" do
    assert_difference("DoujinshisArtbook.count", -1) do
      delete _doujinshis_artbook_url(@_doujinshis_artbook)
    end

    assert_redirected_to _doujinshis_artbooks_url
  end
end
