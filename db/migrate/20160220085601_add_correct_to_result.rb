class AddCorrectToResult < ActiveRecord::Migration
  def change
    add_column :results, :correct, :string
  end
end
