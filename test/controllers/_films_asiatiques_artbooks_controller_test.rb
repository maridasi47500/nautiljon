require "test_helper"

class FilmsAsiatiquesArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_artbook = _films_asiatiques_artbooks(:one)
  end

  test "should get index" do
    get _films_asiatiques_artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_artbook_url
    assert_response :success
  end

  test "should create _films_asiatiques_artbook" do
    assert_difference("FilmsAsiatiquesArtbook.count") do
      post _films_asiatiques_artbooks_url, params: { _films_asiatiques_artbook: { name: @_films_asiatiques_artbook.name } }
    end

    assert_redirected_to _films_asiatiques_artbook_url(FilmsAsiatiquesArtbook.last)
  end

  test "should show _films_asiatiques_artbook" do
    get _films_asiatiques_artbook_url(@_films_asiatiques_artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_artbook_url(@_films_asiatiques_artbook)
    assert_response :success
  end

  test "should update _films_asiatiques_artbook" do
    patch _films_asiatiques_artbook_url(@_films_asiatiques_artbook), params: { _films_asiatiques_artbook: { name: @_films_asiatiques_artbook.name } }
    assert_redirected_to _films_asiatiques_artbook_url(@_films_asiatiques_artbook)
  end

  test "should destroy _films_asiatiques_artbook" do
    assert_difference("FilmsAsiatiquesArtbook.count", -1) do
      delete _films_asiatiques_artbook_url(@_films_asiatiques_artbook)
    end

    assert_redirected_to _films_asiatiques_artbooks_url
  end
end
