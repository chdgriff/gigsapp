class AddAcceptedtoJobApp < ActiveRecord::Migration[5.2]
  def change
    add_column :job_applications, :accepted, :boolean
  end
end
