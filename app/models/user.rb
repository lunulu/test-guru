class User < ApplicationRecord
  has_many :user_tests_histories
  has_many :tests, through: :user_tests_histories

  def tests_history(test_level)
    Test.joins(user_tests_histories: :user).where(users: { id: id }).where(level: test_level)
  end
end
