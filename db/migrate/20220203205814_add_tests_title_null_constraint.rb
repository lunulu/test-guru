class AddTestsTitleNullConstraint < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:tests, :title, false)
  end

  # def up
  #   change_column_null(:tests, :title, false)
  # end
  #
  # def end
  #   change_column_null(:tests, :title, true)
  # end
end
