require "test_helper"

class MangasActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_actualite_mini = _mangas_actualite_minis(:one)
  end

  test "should get index" do
    get _mangas_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_actualite_mini_url
    assert_response :success
  end

  test "should create _mangas_actualite_mini" do
    assert_difference("MangasActualiteMini.count") do
      post _mangas_actualite_minis_url, params: { _mangas_actualite_mini: { name: @_mangas_actualite_mini.name } }
    end

    assert_redirected_to _mangas_actualite_mini_url(MangasActualiteMini.last)
  end

  test "should show _mangas_actualite_mini" do
    get _mangas_actualite_mini_url(@_mangas_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_actualite_mini_url(@_mangas_actualite_mini)
    assert_response :success
  end

  test "should update _mangas_actualite_mini" do
    patch _mangas_actualite_mini_url(@_mangas_actualite_mini), params: { _mangas_actualite_mini: { name: @_mangas_actualite_mini.name } }
    assert_redirected_to _mangas_actualite_mini_url(@_mangas_actualite_mini)
  end

  test "should destroy _mangas_actualite_mini" do
    assert_difference("MangasActualiteMini.count", -1) do
      delete _mangas_actualite_mini_url(@_mangas_actualite_mini)
    end

    assert_redirected_to _mangas_actualite_minis_url
  end
end
