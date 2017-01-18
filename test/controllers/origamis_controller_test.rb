require 'test_helper'

class OrigamisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @origami = origamis(:one)
  end

  test "should get index" do
    get origamis_url
    assert_response :success
  end

  test "should get new" do
    get new_origami_url
    assert_response :success
  end

  test "should create origami" do
    assert_difference('Origami.count') do
      post origamis_url, params: { origami: { description: @origami.description, name: @origami.name } }
    end

    assert_redirected_to origami_url(Origami.last)
  end

  test "should show origami" do
    get origami_url(@origami)
    assert_response :success
  end

  test "should get edit" do
    get edit_origami_url(@origami)
    assert_response :success
  end

  test "should update origami" do
    patch origami_url(@origami), params: { origami: { description: @origami.description, name: @origami.name } }
    assert_redirected_to origami_url(@origami)
  end

  test "should destroy origami" do
    assert_difference('Origami.count', -1) do
      delete origami_url(@origami)
    end

    assert_redirected_to origamis_url
  end
end
