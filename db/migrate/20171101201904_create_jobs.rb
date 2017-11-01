class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.string :url
      t.date :date_applied
      t.string :status
      t.string :recruiter_name
      t.string :recruiter_email
      t.string :recruiter_phone
      t.string :notes

      t.timestamps
    end
  end
end
