require "test_helper"

class DramasArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_artbook = _dramas_artbooks(:one)
  end

  test "should get index" do
    get _dramas_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_artbook_url
    assert_response :success
  end

  test "should create _dramas_artbook" do
    assert_difference("DramasArtbook.count") do
      post _dramas_artbooks_url, params: { _dramas_artbook: { name: @_dramas_artbook.name } }
    end

    assert_redirected_to _dramas_artbook_url(DramasArtbook.last)
  end

  test "should show _dramas_artbook" do
    get _dramas_artbook_url(@_dramas_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_artbook_url(@_dramas_artbook)
    assert_response :success
  end

  test "should update _dramas_artbook" do
    patch _dramas_artbook_url(@_dramas_artbook), params: { _dramas_artbook: { name: @_dramas_artbook.name } }
    assert_redirected_to _dramas_artbook_url(@_dramas_artbook)
  end

  test "should destroy _dramas_artbook" do
    assert_difference("DramasArtbook.count", -1) do
      delete _dramas_artbook_url(@_dramas_artbook)
    end

    assert_redirected_to _dramas_artbooks_url
  end
end
