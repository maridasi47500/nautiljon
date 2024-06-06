require "test_helper"

class DoujinsArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_artbook = _doujins_artbooks(:one)
  end

  test "should get index" do
    get _doujins_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_artbook_url
    assert_response :success
  end

  test "should create _doujins_artbook" do
    assert_difference("DoujinsArtbook.count") do
      post _doujins_artbooks_url, params: { _doujins_artbook: { name: @_doujins_artbook.name } }
    end

    assert_redirected_to _doujins_artbook_url(DoujinsArtbook.last)
  end

  test "should show _doujins_artbook" do
    get _doujins_artbook_url(@_doujins_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_artbook_url(@_doujins_artbook)
    assert_response :success
  end

  test "should update _doujins_artbook" do
    patch _doujins_artbook_url(@_doujins_artbook), params: { _doujins_artbook: { name: @_doujins_artbook.name } }
    assert_redirected_to _doujins_artbook_url(@_doujins_artbook)
  end

  test "should destroy _doujins_artbook" do
    assert_difference("DoujinsArtbook.count", -1) do
      delete _doujins_artbook_url(@_doujins_artbook)
    end

    assert_redirected_to _doujins_artbooks_url
  end
end
