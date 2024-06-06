require "test_helper"

class LivresMangaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_manga_plu = _livres_manga_plus(:one)
  end

  test "should get index" do
    get _livres_manga_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_manga_plu_url
    assert_response :success
  end

  test "should create _livres_manga_plu" do
    assert_difference("LivresMangaPlu.count") do
      post _livres_manga_plus_url, params: { _livres_manga_plu: { name: @_livres_manga_plu.name } }
    end

    assert_redirected_to _livres_manga_plu_url(LivresMangaPlu.last)
  end

  test "should show _livres_manga_plu" do
    get _livres_manga_plu_url(@_livres_manga_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_manga_plu_url(@_livres_manga_plu)
    assert_response :success
  end

  test "should update _livres_manga_plu" do
    patch _livres_manga_plu_url(@_livres_manga_plu), params: { _livres_manga_plu: { name: @_livres_manga_plu.name } }
    assert_redirected_to _livres_manga_plu_url(@_livres_manga_plu)
  end

  test "should destroy _livres_manga_plu" do
    assert_difference("LivresMangaPlu.count", -1) do
      delete _livres_manga_plu_url(@_livres_manga_plu)
    end

    assert_redirected_to _livres_manga_plus_url
  end
end
