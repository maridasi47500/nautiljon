require "test_helper"

class BrevesEvenementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_evenement = _breves_evenements(:one)
  end

  test "should get index" do
    get _breves_evenements_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_evenement_url
    assert_response :success
  end

  test "should create _breves_evenement" do
    assert_difference("BrevesEvenement.count") do
      post _breves_evenements_url, params: { _breves_evenement: { name: @_breves_evenement.name } }
    end

    assert_redirected_to _breves_evenement_url(BrevesEvenement.last)
  end

  test "should show _breves_evenement" do
    get _breves_evenement_url(@_breves_evenement)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_evenement_url(@_breves_evenement)
    assert_response :success
  end

  test "should update _breves_evenement" do
    patch _breves_evenement_url(@_breves_evenement), params: { _breves_evenement: { name: @_breves_evenement.name } }
    assert_redirected_to _breves_evenement_url(@_breves_evenement)
  end

  test "should destroy _breves_evenement" do
    assert_difference("BrevesEvenement.count", -1) do
      delete _breves_evenement_url(@_breves_evenement)
    end

    assert_redirected_to _breves_evenements_url
  end
end
