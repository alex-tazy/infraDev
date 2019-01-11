class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.date :start_date
      t.date :end_date
      t.string :groups
      t.string :title

      t.timestamps
    end
  end
end
