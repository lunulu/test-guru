class CreateTestPassages < ActiveRecord::Migration[7.0]
  def change
    create_table :test_passages do |t|
      t.boolean :completed, default: false

      t.references :user, foreign_key: true
      t.references :test, foreign_key: true
      t.timestamps
    end
  end
end
