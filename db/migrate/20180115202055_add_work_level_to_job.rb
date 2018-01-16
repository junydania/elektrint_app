class AddWorkLevelToJob < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :work_level, index: true, foreign_key: true
  end
end
