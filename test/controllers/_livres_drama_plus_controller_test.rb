require "test_helper"

class LivresDramaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_drama_plu = _livres_drama_plus(:one)
  end

  test "should get index" do
    get _livres_drama_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_drama_plu_url
    assert_response :success
  end

  test "should create _livres_drama_plu" do
    assert_difference("LivresDramaPlu.count") do
      post _livres_drama_plus_url, params: { _livres_drama_plu: { name: @_livres_drama_plu.name } }
    end

    assert_redirected_to _livres_drama_plu_url(LivresDramaPlu.last)
  end

  test "should show _livres_drama_plu" do
    get _livres_drama_plu_url(@_livres_drama_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_drama_plu_url(@_livres_drama_plu)
    assert_response :success
  end

  test "should update _livres_drama_plu" do
    patch _livres_drama_plu_url(@_livres_drama_plu), params: { _livres_drama_plu: { name: @_livres_drama_plu.name } }
    assert_redirected_to _livres_drama_plu_url(@_livres_drama_plu)
  end

  test "should destroy _livres_drama_plu" do
    assert_difference("LivresDramaPlu.count", -1) do
      delete _livres_drama_plu_url(@_livres_drama_plu)
    end

    assert_redirected_to _livres_drama_plus_url
  end
end
