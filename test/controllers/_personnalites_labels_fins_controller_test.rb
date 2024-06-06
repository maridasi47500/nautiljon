require "test_helper"

class PersonnalitesLabelsFinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_labels_fin = _personnalites_labels_fins(:one)
  end

  test "should get index" do
    get _personnalites_labels_fins_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_labels_fin_url
    assert_response :success
  end

  test "should create _personnalites_labels_fin" do
    assert_difference("PersonnalitesLabelsFin.count") do
      post _personnalites_labels_fins_url, params: { _personnalites_labels_fin: { name: @_personnalites_labels_fin.name } }
    end

    assert_redirected_to _personnalites_labels_fin_url(PersonnalitesLabelsFin.last)
  end

  test "should show _personnalites_labels_fin" do
    get _personnalites_labels_fin_url(@_personnalites_labels_fin)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_labels_fin_url(@_personnalites_labels_fin)
    assert_response :success
  end

  test "should update _personnalites_labels_fin" do
    patch _personnalites_labels_fin_url(@_personnalites_labels_fin), params: { _personnalites_labels_fin: { name: @_personnalites_labels_fin.name } }
    assert_redirected_to _personnalites_labels_fin_url(@_personnalites_labels_fin)
  end

  test "should destroy _personnalites_labels_fin" do
    assert_difference("PersonnalitesLabelsFin.count", -1) do
      delete _personnalites_labels_fin_url(@_personnalites_labels_fin)
    end

    assert_redirected_to _personnalites_labels_fins_url
  end
end
