require "test_helper"

class BrevesBeauLivresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_beau_livre = _breves_beau_livres(:one)
  end

  test "should get index" do
    get _breves_beau_livres_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_beau_livre_url
    assert_response :success
  end

  test "should create _breves_beau_livre" do
    assert_difference("BrevesBeauLivre.count") do
      post _breves_beau_livres_url, params: { _breves_beau_livre: { name: @_breves_beau_livre.name } }
    end

    assert_redirected_to _breves_beau_livre_url(BrevesBeauLivre.last)
  end

  test "should show _breves_beau_livre" do
    get _breves_beau_livre_url(@_breves_beau_livre)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_beau_livre_url(@_breves_beau_livre)
    assert_response :success
  end

  test "should update _breves_beau_livre" do
    patch _breves_beau_livre_url(@_breves_beau_livre), params: { _breves_beau_livre: { name: @_breves_beau_livre.name } }
    assert_redirected_to _breves_beau_livre_url(@_breves_beau_livre)
  end

  test "should destroy _breves_beau_livre" do
    assert_difference("BrevesBeauLivre.count", -1) do
      delete _breves_beau_livre_url(@_breves_beau_livre)
    end

    assert_redirected_to _breves_beau_livres_url
  end
end
