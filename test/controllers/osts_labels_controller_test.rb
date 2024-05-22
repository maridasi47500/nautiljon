require "test_helper"

class OstsLabelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_label = osts_labels(:one)
  end

  test "should get index" do
    get osts_labels_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_label_url
    assert_response :success
  end

  test "should create osts_label" do
    assert_difference("OstsLabel.count") do
      post osts_labels_url, params: { osts_label: { name: @osts_label.name } }
    end

    assert_redirected_to osts_label_url(OstsLabel.last)
  end

  test "should show osts_label" do
    get osts_label_url(@osts_label)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_label_url(@osts_label)
    assert_response :success
  end

  test "should update osts_label" do
    patch osts_label_url(@osts_label), params: { osts_label: { name: @osts_label.name } }
    assert_redirected_to osts_label_url(@osts_label)
  end

  test "should destroy osts_label" do
    assert_difference("OstsLabel.count", -1) do
      delete osts_label_url(@osts_label)
    end

    assert_redirected_to osts_labels_url
  end
end
