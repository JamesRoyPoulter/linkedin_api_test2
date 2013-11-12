class AddLastUpdateToBasicProfile < ActiveRecord::Migration
  def change
    add_column :basic_profiles, :last_update, :date
  end
end
