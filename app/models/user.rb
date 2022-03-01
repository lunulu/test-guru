class User < ApplicationRecord
  has_many :test_passages
  has_many :tests, through: :test_passages

  has_many :tests, inverse_of: 'author'

  def started_tests_by_level(test_level)
    tests.where(level: test_level)
  end
end
