class ChangeColumnBodyNameToCorrectInAnswers < ActiveRecord::Migration[7.0]
  def change
    change_table :answers do |t|
      t.rename :body, :correct
    end
  end
end
