class CreateWorkLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :work_levels do |t|
      t.string :level_name

      t.timestamps
    end
  end
end
