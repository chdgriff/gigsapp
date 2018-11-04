class ChangeColumnName < ActiveRecord::Migration[5.2]
  def up
    rename_column :posts, :body, :description
  end

  def down
    rename_column :posts, :description, :body
  end
end
