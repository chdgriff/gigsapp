class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.float :ask_rate
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
