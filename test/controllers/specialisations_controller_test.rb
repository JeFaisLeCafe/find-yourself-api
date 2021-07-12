require "test_helper"

class SpecialisationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @specialisation = specialisations(:one)
  end

  test "should get index" do
    get specialisations_url, as: :json
    assert_response :success
  end

  test "should create specialisation" do
    assert_difference('Specialisation.count') do
      post specialisations_url, params: { specialisation: { name: @specialisation.name } }, as: :json
    end

    assert_response 201
  end

  test "should show specialisation" do
    get specialisation_url(@specialisation), as: :json
    assert_response :success
  end

  test "should update specialisation" do
    patch specialisation_url(@specialisation), params: { specialisation: { name: @specialisation.name } }, as: :json
    assert_response 200
  end

  test "should destroy specialisation" do
    assert_difference('Specialisation.count', -1) do
      delete specialisation_url(@specialisation), as: :json
    end

    assert_response 204
  end
end
