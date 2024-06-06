require "test_helper"

class GoodiesMatieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_matiere = _goodies_matieres(:one)
  end

  test "should get index" do
    get _goodies_matieres_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_matiere_url
    assert_response :success
  end

  test "should create _goodies_matiere" do
    assert_difference("GoodiesMatiere.count") do
      post _goodies_matieres_url, params: { _goodies_matiere: { name: @_goodies_matiere.name } }
    end

    assert_redirected_to _goodies_matiere_url(GoodiesMatiere.last)
  end

  test "should show _goodies_matiere" do
    get _goodies_matiere_url(@_goodies_matiere)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_matiere_url(@_goodies_matiere)
    assert_response :success
  end

  test "should update _goodies_matiere" do
    patch _goodies_matiere_url(@_goodies_matiere), params: { _goodies_matiere: { name: @_goodies_matiere.name } }
    assert_redirected_to _goodies_matiere_url(@_goodies_matiere)
  end

  test "should destroy _goodies_matiere" do
    assert_difference("GoodiesMatiere.count", -1) do
      delete _goodies_matiere_url(@_goodies_matiere)
    end

    assert_redirected_to _goodies_matieres_url
  end
end
