class AddFamilyNametoJobFamily < ActiveRecord::Migration[5.1]
  def change
    add_column :job_families, :family_name, :string
  end
end

