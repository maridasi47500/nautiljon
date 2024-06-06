require "test_helper"

class LivresDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_drama = _livres_dramas(:one)
  end

  test "should get index" do
    get _livres_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_drama_url
    assert_response :success
  end

  test "should create _livres_drama" do
    assert_difference("LivresDrama.count") do
      post _livres_dramas_url, params: { _livres_drama: { name: @_livres_drama.name } }
    end

    assert_redirected_to _livres_drama_url(LivresDrama.last)
  end

  test "should show _livres_drama" do
    get _livres_drama_url(@_livres_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_drama_url(@_livres_drama)
    assert_response :success
  end

  test "should update _livres_drama" do
    patch _livres_drama_url(@_livres_drama), params: { _livres_drama: { name: @_livres_drama.name } }
    assert_redirected_to _livres_drama_url(@_livres_drama)
  end

  test "should destroy _livres_drama" do
    assert_difference("LivresDrama.count", -1) do
      delete _livres_drama_url(@_livres_drama)
    end

    assert_redirected_to _livres_dramas_url
  end
end
