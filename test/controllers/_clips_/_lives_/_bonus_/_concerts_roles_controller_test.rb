require "test_helper"

class Clips::Lives::Bonus::ConcertsRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concerts_role = _clips___lives___bonus___concerts_roles(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concerts_role_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concerts_role" do
    assert_difference("Clips::Lives::Bonus::ConcertsRole.count") do
      post _clips___lives___bonus___concerts_roles_url, params: { _clips___lives___bonus___concerts_role: { name: @_clips___lives___bonus___concerts_role.name } }
    end

    assert_redirected_to _clips___lives___bonus___concerts_role_url(Clips::Lives::Bonus::ConcertsRole.last)
  end

  test "should show _clips___lives___bonus___concerts_role" do
    get _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concerts_role" do
    patch _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role), params: { _clips___lives___bonus___concerts_role: { name: @_clips___lives___bonus___concerts_role.name } }
    assert_redirected_to _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role)
  end

  test "should destroy _clips___lives___bonus___concerts_role" do
    assert_difference("Clips::Lives::Bonus::ConcertsRole.count", -1) do
      delete _clips___lives___bonus___concerts_role_url(@_clips___lives___bonus___concerts_role)
    end

    assert_redirected_to _clips___lives___bonus___concerts_roles_url
  end
end
