class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length: {minimum: 1, maximum: 280}, presence: true
  validates :published_at, presence: true

  after_initialize do 
    self.published_at ||= 24.hour.from_now
  end

  def published?

    tweet_id?
  end
end

