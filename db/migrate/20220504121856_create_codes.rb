class CreateCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :codes do |t|
      t.string :name
      t.string :id_number

      t.timestamps
    end
  end
end
