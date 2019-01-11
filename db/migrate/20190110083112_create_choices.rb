class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.string :name
      t.references :election, foreign_key: true

      t.timestamps
    end
  
    create_table :signatures do |t|
      t.references :election, foreign_key: true
      t.references :elector, foreign_key: true

      t.timestamps
    end
  end
end
