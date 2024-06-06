require "test_helper"

class ConcertsArtistesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_concerts_artiste = _concerts_artistes(:one)
  end

  test "should get index" do
    get _concerts_artistes_url
    assert_response :success
  end

  test "should get new" do
    get new__concerts_artiste_url
    assert_response :success
  end

  test "should create _concerts_artiste" do
    assert_difference("ConcertsArtiste.count") do
      post _concerts_artistes_url, params: { _concerts_artiste: { name: @_concerts_artiste.name } }
    end

    assert_redirected_to _concerts_artiste_url(ConcertsArtiste.last)
  end

  test "should show _concerts_artiste" do
    get _concerts_artiste_url(@_concerts_artiste)
    assert_response :success
  end

  test "should get edit" do
    get edit__concerts_artiste_url(@_concerts_artiste)
    assert_response :success
  end

  test "should update _concerts_artiste" do
    patch _concerts_artiste_url(@_concerts_artiste), params: { _concerts_artiste: { name: @_concerts_artiste.name } }
    assert_redirected_to _concerts_artiste_url(@_concerts_artiste)
  end

  test "should destroy _concerts_artiste" do
    assert_difference("ConcertsArtiste.count", -1) do
      delete _concerts_artiste_url(@_concerts_artiste)
    end

    assert_redirected_to _concerts_artistes_url
  end
end
