require "test_helper"

class PolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pole = poles(:one)
  end

  test "should get index" do
    get poles_url, as: :json
    assert_response :success
  end

  test "should create pole" do
    assert_difference('Pole.count') do
      post poles_url, params: { pole: { name: @pole.name } }, as: :json
    end

    assert_response 201
  end

  test "should show pole" do
    get pole_url(@pole), as: :json
    assert_response :success
  end

  test "should update pole" do
    patch pole_url(@pole), params: { pole: { name: @pole.name } }, as: :json
    assert_response 200
  end

  test "should destroy pole" do
    assert_difference('Pole.count', -1) do
      delete pole_url(@pole), as: :json
    end

    assert_response 204
  end
end
