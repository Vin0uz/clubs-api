class CreateClubs < ActiveRecord::Migration[6.1]
  def change
    create_table :clubs do |t|
      t.string :name

      t.timestamps
    end
    add_index :clubs, :name
  end
end
