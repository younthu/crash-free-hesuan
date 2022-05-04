class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :test_id
      t.string :community
      t.datetime :tested_at
      t.jsonb :ids
      t.string :status

      t.timestamps
    end
  end
end
