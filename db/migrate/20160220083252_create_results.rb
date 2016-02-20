class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.string :surname
      t.string :group

      t.timestamps null: false
    end
  end
end
