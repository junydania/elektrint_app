class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.integer :sbg_grade

      t.timestamps
    end
  end
end
