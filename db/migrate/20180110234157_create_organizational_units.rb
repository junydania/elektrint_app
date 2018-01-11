class CreateOrganizationalUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :organizational_units do |t|
      t.string :unit_name

      t.timestamps
    end
  end
end
