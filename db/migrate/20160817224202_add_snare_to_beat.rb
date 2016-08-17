class AddSnareToBeat < ActiveRecord::Migration
  def change
    add_column :beats, :snare, :string
  end
end
