class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :events, :user_id, :host 
  end
end
