class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.belongs_to :user, index: true, foreign_key: true, null: false
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
