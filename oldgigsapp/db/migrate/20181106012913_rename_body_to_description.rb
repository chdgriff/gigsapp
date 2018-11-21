class RenameBodyToDescription < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :body, :description
  end
end
