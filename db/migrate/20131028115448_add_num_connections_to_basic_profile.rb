class AddNumConnectionsToBasicProfile < ActiveRecord::Migration
  def change
    add_column :basic_profiles, :num_connections, :integer
  end
end
