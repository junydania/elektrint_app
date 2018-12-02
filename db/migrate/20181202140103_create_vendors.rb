class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :company_name
      t.string :phone
      t.string :email
      t.string :representative_name
      t.string :office_address

      t.timestamps
    end
  end
end
