require "test_helper"

class MangasConcoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_concour = _mangas_concours(:one)
  end

  test "should get index" do
    get _mangas_concours_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_concour_url
    assert_response :success
  end

  test "should create _mangas_concour" do
    assert_difference("MangasConcour.count") do
      post _mangas_concours_url, params: { _mangas_concour: { name: @_mangas_concour.name } }
    end

    assert_redirected_to _mangas_concour_url(MangasConcour.last)
  end

  test "should show _mangas_concour" do
    get _mangas_concour_url(@_mangas_concour)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_concour_url(@_mangas_concour)
    assert_response :success
  end

  test "should update _mangas_concour" do
    patch _mangas_concour_url(@_mangas_concour), params: { _mangas_concour: { name: @_mangas_concour.name } }
    assert_redirected_to _mangas_concour_url(@_mangas_concour)
  end

  test "should destroy _mangas_concour" do
    assert_difference("MangasConcour.count", -1) do
      delete _mangas_concour_url(@_mangas_concour)
    end

    assert_redirected_to _mangas_concours_url
  end
end
