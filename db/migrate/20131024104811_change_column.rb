class ChangeColumn < ActiveRecord::Migration

  def change
    change_column :basic_profiles, :summary, :text, :limit => nil
  end

end
