require 'test_helper'

class CardpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardpage = cardpages(:one)
  end

  test "should get index" do
    get cardpages_url
    assert_response :success
  end

  test "should get new" do
    get new_cardpage_url
    assert_response :success
  end

  test "should create cardpage" do
    assert_difference('Cardpage.count') do
      post cardpages_url, params: { cardpage: { body: @cardpage.body, h1: @cardpage.h1, title: @cardpage.title } }
    end

    assert_redirected_to cardpage_url(Cardpage.last)
  end

  test "should show cardpage" do
    get cardpage_url(@cardpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardpage_url(@cardpage)
    assert_response :success
  end

  test "should update cardpage" do
    patch cardpage_url(@cardpage), params: { cardpage: { body: @cardpage.body, h1: @cardpage.h1, title: @cardpage.title } }
    assert_redirected_to cardpage_url(@cardpage)
  end

  test "should destroy cardpage" do
    assert_difference('Cardpage.count', -1) do
      delete cardpage_url(@cardpage)
    end

    assert_redirected_to cardpages_url
  end
end
