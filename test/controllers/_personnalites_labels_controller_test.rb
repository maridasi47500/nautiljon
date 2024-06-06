require "test_helper"

class PersonnalitesLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_label = _personnalites_labels(:one)
  end

  test "should get index" do
    get _personnalites_labels_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_label_url
    assert_response :success
  end

  test "should create _personnalites_label" do
    assert_difference("PersonnalitesLabel.count") do
      post _personnalites_labels_url, params: { _personnalites_label: { name: @_personnalites_label.name } }
    end

    assert_redirected_to _personnalites_label_url(PersonnalitesLabel.last)
  end

  test "should show _personnalites_label" do
    get _personnalites_label_url(@_personnalites_label)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_label_url(@_personnalites_label)
    assert_response :success
  end

  test "should update _personnalites_label" do
    patch _personnalites_label_url(@_personnalites_label), params: { _personnalites_label: { name: @_personnalites_label.name } }
    assert_redirected_to _personnalites_label_url(@_personnalites_label)
  end

  test "should destroy _personnalites_label" do
    assert_difference("PersonnalitesLabel.count", -1) do
      delete _personnalites_label_url(@_personnalites_label)
    end

    assert_redirected_to _personnalites_labels_url
  end
end
