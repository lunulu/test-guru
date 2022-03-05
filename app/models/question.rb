class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :test

  validates :body, presence: true
  validates :answers, length: { minimum: 1, maximum: 4 }
end
