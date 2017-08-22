require 'test_helper'

class NewsDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_datum = news_data(:one)
  end

  test "should get index" do
    get news_data_url
    assert_response :success
  end

  test "should get new" do
    get new_news_datum_url
    assert_response :success
  end

  test "should create news_datum" do
    assert_difference('NewsDatum.count') do
      post news_data_url, params: { news_datum: { category_id: @news_datum.category_id, description: @news_datum.description, headlines: @news_datum.headlines } }
    end

    assert_redirected_to news_datum_url(NewsDatum.last)
  end

  test "should show news_datum" do
    get news_datum_url(@news_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_datum_url(@news_datum)
    assert_response :success
  end

  test "should update news_datum" do
    patch news_datum_url(@news_datum), params: { news_datum: { category_id: @news_datum.category_id, description: @news_datum.description, headlines: @news_datum.headlines } }
    assert_redirected_to news_datum_url(@news_datum)
  end

  test "should destroy news_datum" do
    assert_difference('NewsDatum.count', -1) do
      delete news_datum_url(@news_datum)
    end

    assert_redirected_to news_data_url
  end
end
