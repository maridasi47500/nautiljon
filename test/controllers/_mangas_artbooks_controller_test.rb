require "test_helper"

class MangasArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_artbook = _mangas_artbooks(:one)
  end

  test "should get index" do
    get _mangas_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_artbook_url
    assert_response :success
  end

  test "should create _mangas_artbook" do
    assert_difference("MangasArtbook.count") do
      post _mangas_artbooks_url, params: { _mangas_artbook: { name: @_mangas_artbook.name } }
    end

    assert_redirected_to _mangas_artbook_url(MangasArtbook.last)
  end

  test "should show _mangas_artbook" do
    get _mangas_artbook_url(@_mangas_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_artbook_url(@_mangas_artbook)
    assert_response :success
  end

  test "should update _mangas_artbook" do
    patch _mangas_artbook_url(@_mangas_artbook), params: { _mangas_artbook: { name: @_mangas_artbook.name } }
    assert_redirected_to _mangas_artbook_url(@_mangas_artbook)
  end

  test "should destroy _mangas_artbook" do
    assert_difference("MangasArtbook.count", -1) do
      delete _mangas_artbook_url(@_mangas_artbook)
    end

    assert_redirected_to _mangas_artbooks_url
  end
end
