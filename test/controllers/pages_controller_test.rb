require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
      @base_title = "BirdPoll"
  end

  test "shoulf get root" do
    get '/'
    assert_response :success
  end

  test "should get home" do 
    get pages_tweet_url
    assert_response :success
    assert_select "title", "Tweet | #{@base_title}"
  end

  test "should get candidate" do
    get pages_candidate_url
    assert_response :success
    assert_select "title", "Candidate | #{@base_title}"
  end

end
