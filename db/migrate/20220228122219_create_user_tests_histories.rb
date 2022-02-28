class CreateUserTestsHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :user_tests_histories do |t|
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
