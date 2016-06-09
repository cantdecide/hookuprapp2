class CreateHookups < ActiveRecord::Migration
  def change
    create_table :hookups do |t|
      t.string :name
      t.integer :age
      t.integer :personality
      t.integer :level_of_attraction
      t.integer :intenseness_of_orgasm
      t.integer :dick
      t.boolean :did_you_cum
      t.boolean :did_you_cuddle_afterwards
      t.integer :composite_score

      t.timestamps null: false
    end
  end
end
