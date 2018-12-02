class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :scope
      t.string :objective
      t.datetime :expected_start_date
      t.datetime :expected_delivery_date

      t.timestamps
    end
  end
end
