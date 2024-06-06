require "test_helper"

class MangasActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_actualite = _mangas_actualites(:one)
  end

  test "should get index" do
    get _mangas_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_actualite_url
    assert_response :success
  end

  test "should create _mangas_actualite" do
    assert_difference("MangasActualite.count") do
      post _mangas_actualites_url, params: { _mangas_actualite: { name: @_mangas_actualite.name } }
    end

    assert_redirected_to _mangas_actualite_url(MangasActualite.last)
  end

  test "should show _mangas_actualite" do
    get _mangas_actualite_url(@_mangas_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_actualite_url(@_mangas_actualite)
    assert_response :success
  end

  test "should update _mangas_actualite" do
    patch _mangas_actualite_url(@_mangas_actualite), params: { _mangas_actualite: { name: @_mangas_actualite.name } }
    assert_redirected_to _mangas_actualite_url(@_mangas_actualite)
  end

  test "should destroy _mangas_actualite" do
    assert_difference("MangasActualite.count", -1) do
      delete _mangas_actualite_url(@_mangas_actualite)
    end

    assert_redirected_to _mangas_actualites_url
  end
end
