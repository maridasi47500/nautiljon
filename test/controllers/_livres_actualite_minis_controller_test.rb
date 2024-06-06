require "test_helper"

class LivresActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_actualite_mini = _livres_actualite_minis(:one)
  end

  test "should get index" do
    get _livres_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_actualite_mini_url
    assert_response :success
  end

  test "should create _livres_actualite_mini" do
    assert_difference("LivresActualiteMini.count") do
      post _livres_actualite_minis_url, params: { _livres_actualite_mini: { name: @_livres_actualite_mini.name } }
    end

    assert_redirected_to _livres_actualite_mini_url(LivresActualiteMini.last)
  end

  test "should show _livres_actualite_mini" do
    get _livres_actualite_mini_url(@_livres_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_actualite_mini_url(@_livres_actualite_mini)
    assert_response :success
  end

  test "should update _livres_actualite_mini" do
    patch _livres_actualite_mini_url(@_livres_actualite_mini), params: { _livres_actualite_mini: { name: @_livres_actualite_mini.name } }
    assert_redirected_to _livres_actualite_mini_url(@_livres_actualite_mini)
  end

  test "should destroy _livres_actualite_mini" do
    assert_difference("LivresActualiteMini.count", -1) do
      delete _livres_actualite_mini_url(@_livres_actualite_mini)
    end

    assert_redirected_to _livres_actualite_minis_url
  end
end
