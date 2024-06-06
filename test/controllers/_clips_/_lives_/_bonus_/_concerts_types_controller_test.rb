require "test_helper"

class Clips::Lives::Bonus::ConcertsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concerts_type = _clips___lives___bonus___concerts_types(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_types_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concerts_type_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concerts_type" do
    assert_difference("Clips::Lives::Bonus::ConcertsType.count") do
      post _clips___lives___bonus___concerts_types_url, params: { _clips___lives___bonus___concerts_type: { name: @_clips___lives___bonus___concerts_type.name } }
    end

    assert_redirected_to _clips___lives___bonus___concerts_type_url(Clips::Lives::Bonus::ConcertsType.last)
  end

  test "should show _clips___lives___bonus___concerts_type" do
    get _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concerts_type" do
    patch _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type), params: { _clips___lives___bonus___concerts_type: { name: @_clips___lives___bonus___concerts_type.name } }
    assert_redirected_to _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type)
  end

  test "should destroy _clips___lives___bonus___concerts_type" do
    assert_difference("Clips::Lives::Bonus::ConcertsType.count", -1) do
      delete _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type)
    end

    assert_redirected_to _clips___lives___bonus___concerts_types_url
  end
end
