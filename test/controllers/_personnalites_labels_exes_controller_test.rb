require "test_helper"

class PersonnalitesLabelsExesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_labels_ex = _personnalites_labels_exes(:one)
  end

  test "should get index" do
    get _personnalites_labels_exes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_labels_ex_url
    assert_response :success
  end

  test "should create _personnalites_labels_ex" do
    assert_difference("PersonnalitesLabelsEx.count") do
      post _personnalites_labels_exes_url, params: { _personnalites_labels_ex: { name: @_personnalites_labels_ex.name } }
    end

    assert_redirected_to _personnalites_labels_ex_url(PersonnalitesLabelsEx.last)
  end

  test "should show _personnalites_labels_ex" do
    get _personnalites_labels_ex_url(@_personnalites_labels_ex)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_labels_ex_url(@_personnalites_labels_ex)
    assert_response :success
  end

  test "should update _personnalites_labels_ex" do
    patch _personnalites_labels_ex_url(@_personnalites_labels_ex), params: { _personnalites_labels_ex: { name: @_personnalites_labels_ex.name } }
    assert_redirected_to _personnalites_labels_ex_url(@_personnalites_labels_ex)
  end

  test "should destroy _personnalites_labels_ex" do
    assert_difference("PersonnalitesLabelsEx.count", -1) do
      delete _personnalites_labels_ex_url(@_personnalites_labels_ex)
    end

    assert_redirected_to _personnalites_labels_exes_url
  end
end
