class UserTestsHistory < ApplicationRecord
  belongs_to :user
  belongs_to :test
end
