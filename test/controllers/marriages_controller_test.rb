require "test_helper"

class MarriagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marriage = marriages(:one)
  end

  test "should get index" do
    get person_marriages_url(person_id: 1), as: :json
    assert_response :success
  end

  test "should create marriage" do
    assert_difference("Marriage.count") do
      post marriages_url, params: { marriage: { spouse_ids: [1, 2], marriage_date: '30-06-2025' } }, as: :json
    end

    assert_response :created
  end

  test "should show marriage" do
    get marriage_url(id: 1), as: :json
    assert_response :success
  end

  test "should update marriage" do
    put marriage_url(id: 1), params: { marriage: { termination_date: '30-06-2040' } }, as: :json
    assert_response :success
  end

  # Marriages are not to be destroyed, it's best to just update termination date
  test "should destroy marriage" do
    assert_difference("Marriage.count", -1) do
      delete marriage_url(id: 1), as: :json
    end

    assert_response :no_content
  end
end
