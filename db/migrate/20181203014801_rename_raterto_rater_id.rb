class RenameRatertoRaterId < ActiveRecord::Migration[5.2]
  def change
    rename_column :ratings, :rater, :rater_id
  end
end
