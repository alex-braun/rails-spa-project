class AddClapToBeat < ActiveRecord::Migration
  def change
    add_column :beats, :clap, :string
  end
end
