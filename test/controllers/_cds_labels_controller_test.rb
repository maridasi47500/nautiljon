require "test_helper"

class CdsLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_label = _cds_labels(:one)
  end

  test "should get index" do
    get _cds_labels_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_label_url
    assert_response :success
  end

  test "should create _cds_label" do
    assert_difference("CdsLabel.count") do
      post _cds_labels_url, params: { _cds_label: { name: @_cds_label.name } }
    end

    assert_redirected_to _cds_label_url(CdsLabel.last)
  end

  test "should show _cds_label" do
    get _cds_label_url(@_cds_label)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_label_url(@_cds_label)
    assert_response :success
  end

  test "should update _cds_label" do
    patch _cds_label_url(@_cds_label), params: { _cds_label: { name: @_cds_label.name } }
    assert_redirected_to _cds_label_url(@_cds_label)
  end

  test "should destroy _cds_label" do
    assert_difference("CdsLabel.count", -1) do
      delete _cds_label_url(@_cds_label)
    end

    assert_redirected_to _cds_labels_url
  end
end
