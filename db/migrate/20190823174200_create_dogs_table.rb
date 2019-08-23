class CreateDogsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.integer :age

      t.timestamps
    end
  end
end
