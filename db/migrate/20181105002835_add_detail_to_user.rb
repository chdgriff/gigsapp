class AddDetailToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :bio, :string
    add_column :users, :address, :string
    add_column :users, :address2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :employee, :boolean
    add_column :users, :employer, :boolean
    add_column :users, :age, :boolean
    add_column :users, :profile_image_file_name, :string
    add_column :users, :profile_image_content_type, :string
    add_column :users, :profile_image_file_size, :integer
    add_column :users, :profile_image_updated_at, :datetime
  end
end
