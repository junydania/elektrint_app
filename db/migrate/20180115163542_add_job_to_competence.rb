class AddJobToCompetence < ActiveRecord::Migration[5.1]
  def change
    add_reference :competences, :job, index: true, foreign_key: true
  end
end
