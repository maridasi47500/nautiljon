require "test_helper"

class BrevesLivreJeunessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_livre_jeuness = _breves_livre_jeunesses(:one)
  end

  test "should get index" do
    get _breves_livre_jeunesses_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_livre_jeuness_url
    assert_response :success
  end

  test "should create _breves_livre_jeuness" do
    assert_difference("BrevesLivreJeunesse.count") do
      post _breves_livre_jeunesses_url, params: { _breves_livre_jeuness: { name: @_breves_livre_jeuness.name } }
    end

    assert_redirected_to _breves_livre_jeuness_url(BrevesLivreJeunesse.last)
  end

  test "should show _breves_livre_jeuness" do
    get _breves_livre_jeuness_url(@_breves_livre_jeuness)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_livre_jeuness_url(@_breves_livre_jeuness)
    assert_response :success
  end

  test "should update _breves_livre_jeuness" do
    patch _breves_livre_jeuness_url(@_breves_livre_jeuness), params: { _breves_livre_jeuness: { name: @_breves_livre_jeuness.name } }
    assert_redirected_to _breves_livre_jeuness_url(@_breves_livre_jeuness)
  end

  test "should destroy _breves_livre_jeuness" do
    assert_difference("BrevesLivreJeunesse.count", -1) do
      delete _breves_livre_jeuness_url(@_breves_livre_jeuness)
    end

    assert_redirected_to _breves_livre_jeunesses_url
  end
end
