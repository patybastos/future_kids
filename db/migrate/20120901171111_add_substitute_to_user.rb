class AddSubstituteToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :substitute, :boolean, default: false
  end
end
