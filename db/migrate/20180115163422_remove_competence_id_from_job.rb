class RemoveCompetenceIdFromJob < ActiveRecord::Migration[5.1]
  def change
    remove_column :jobs, :competence_id
  end
end

