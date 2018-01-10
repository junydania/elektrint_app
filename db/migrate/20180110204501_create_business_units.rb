class CreateBusinessUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :business_units do |t|
      t.string :unit_name

      t.timestamps
    end
  end
end
