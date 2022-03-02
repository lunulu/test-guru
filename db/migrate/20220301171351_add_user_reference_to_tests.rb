class AddUserReferenceToTests < ActiveRecord::Migration[7.0]
  def change
    add_reference :tests, :user, foreign_key: true
  end
end
