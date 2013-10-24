class ChangePositionSummaryToText < ActiveRecord::Migration

  def change
    change_column :positions, :summary, :text, :limit => nil
  end

end
