class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :correct, default: '42'
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
