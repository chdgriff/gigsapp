class RatingAvg < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rating_avg, :integer
  end
end
