class CreatePrimaryClusters < ActiveRecord::Migration[5.1]
  def change
    create_table :primary_clusters do |t|
      t.string :cluster_name

      t.timestamps
    end
  end
end
