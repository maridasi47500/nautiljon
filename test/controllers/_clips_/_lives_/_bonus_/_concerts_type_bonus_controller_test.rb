require "test_helper"

class Clips::Lives::Bonus::ConcertsTypeBonusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concerts_type_bonu = _clips___lives___bonus___concerts_type_bonus(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_type_bonus_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concerts_type_bonu_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concerts_type_bonu" do
    assert_difference("Clips::Lives::Bonus::ConcertsTypeBonu.count") do
      post _clips___lives___bonus___concerts_type_bonus_url, params: { _clips___lives___bonus___concerts_type_bonu: { name: @_clips___lives___bonus___concerts_type_bonu.name } }
    end

    assert_redirected_to _clips___lives___bonus___concerts_type_bonu_url(Clips::Lives::Bonus::ConcertsTypeBonu.last)
  end

  test "should show _clips___lives___bonus___concerts_type_bonu" do
    get _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concerts_type_bonu" do
    patch _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu), params: { _clips___lives___bonus___concerts_type_bonu: { name: @_clips___lives___bonus___concerts_type_bonu.name } }
    assert_redirected_to _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu)
  end

  test "should destroy _clips___lives___bonus___concerts_type_bonu" do
    assert_difference("Clips::Lives::Bonus::ConcertsTypeBonu.count", -1) do
      delete _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu)
    end

    assert_redirected_to _clips___lives___bonus___concerts_type_bonus_url
  end
end
