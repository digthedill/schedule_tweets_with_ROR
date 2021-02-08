class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    return if tweet.published?
    # prevents duplicates

    return if tweet.published_at > Time.current
    #apparently makes sense but is couterintuitive

    tweet.publish_to_twitter!
  end
end
