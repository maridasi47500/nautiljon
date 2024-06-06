require "test_helper"

class FilmsAsiatiquesEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_editeurs_vf = _films_asiatiques_editeurs_vfs(:one)
  end

  test "should get index" do
    get _films_asiatiques_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_editeurs_vf_url
    assert_response :success
  end

  test "should create _films_asiatiques_editeurs_vf" do
    assert_difference("FilmsAsiatiquesEditeursVf.count") do
      post _films_asiatiques_editeurs_vfs_url, params: { _films_asiatiques_editeurs_vf: { name: @_films_asiatiques_editeurs_vf.name } }
    end

    assert_redirected_to _films_asiatiques_editeurs_vf_url(FilmsAsiatiquesEditeursVf.last)
  end

  test "should show _films_asiatiques_editeurs_vf" do
    get _films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf)
    assert_response :success
  end

  test "should update _films_asiatiques_editeurs_vf" do
    patch _films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf), params: { _films_asiatiques_editeurs_vf: { name: @_films_asiatiques_editeurs_vf.name } }
    assert_redirected_to _films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf)
  end

  test "should destroy _films_asiatiques_editeurs_vf" do
    assert_difference("FilmsAsiatiquesEditeursVf.count", -1) do
      delete _films_asiatiques_editeurs_vf_url(@_films_asiatiques_editeurs_vf)
    end

    assert_redirected_to _films_asiatiques_editeurs_vfs_url
  end
end
