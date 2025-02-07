require "test_helper"

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get rails" do
    get article_rails_url
    assert_response :success
  end

  test "should get generate" do
    get article_generate_url
    assert_response :success
  end

  test "should get controller" do
    get article_controller_url
    assert_response :success
  end

  test "should get comment" do
    get article_comment_url
    assert_response :success
  end
end
