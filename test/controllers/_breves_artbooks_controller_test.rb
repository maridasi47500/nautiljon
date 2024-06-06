require "test_helper"

class BrevesArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_artbook = _breves_artbooks(:one)
  end

  test "should get index" do
    get _breves_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_artbook_url
    assert_response :success
  end

  test "should create _breves_artbook" do
    assert_difference("BrevesArtbook.count") do
      post _breves_artbooks_url, params: { _breves_artbook: { name: @_breves_artbook.name } }
    end

    assert_redirected_to _breves_artbook_url(BrevesArtbook.last)
  end

  test "should show _breves_artbook" do
    get _breves_artbook_url(@_breves_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_artbook_url(@_breves_artbook)
    assert_response :success
  end

  test "should update _breves_artbook" do
    patch _breves_artbook_url(@_breves_artbook), params: { _breves_artbook: { name: @_breves_artbook.name } }
    assert_redirected_to _breves_artbook_url(@_breves_artbook)
  end

  test "should destroy _breves_artbook" do
    assert_difference("BrevesArtbook.count", -1) do
      delete _breves_artbook_url(@_breves_artbook)
    end

    assert_redirected_to _breves_artbooks_url
  end
end
