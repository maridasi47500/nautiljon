require "test_helper"

class PersonnalitesLabelsDebutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_labels_debut = _personnalites_labels_debuts(:one)
  end

  test "should get index" do
    get _personnalites_labels_debuts_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_labels_debut_url
    assert_response :success
  end

  test "should create _personnalites_labels_debut" do
    assert_difference("PersonnalitesLabelsDebut.count") do
      post _personnalites_labels_debuts_url, params: { _personnalites_labels_debut: { name: @_personnalites_labels_debut.name } }
    end

    assert_redirected_to _personnalites_labels_debut_url(PersonnalitesLabelsDebut.last)
  end

  test "should show _personnalites_labels_debut" do
    get _personnalites_labels_debut_url(@_personnalites_labels_debut)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_labels_debut_url(@_personnalites_labels_debut)
    assert_response :success
  end

  test "should update _personnalites_labels_debut" do
    patch _personnalites_labels_debut_url(@_personnalites_labels_debut), params: { _personnalites_labels_debut: { name: @_personnalites_labels_debut.name } }
    assert_redirected_to _personnalites_labels_debut_url(@_personnalites_labels_debut)
  end

  test "should destroy _personnalites_labels_debut" do
    assert_difference("PersonnalitesLabelsDebut.count", -1) do
      delete _personnalites_labels_debut_url(@_personnalites_labels_debut)
    end

    assert_redirected_to _personnalites_labels_debuts_url
  end
end
