class AddCorrectDefaultValueToAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :answers, :correct, from: nil, to: 0
  end
end
