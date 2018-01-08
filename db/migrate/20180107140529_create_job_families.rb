class CreateJobFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :job_families do |t|

      t.timestamps
    end
  end
end
