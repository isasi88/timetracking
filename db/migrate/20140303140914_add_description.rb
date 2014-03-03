class AddDescription < ActiveRecord::Migration
  def change
  		add_column :projects, :add_description, :text
  end
end
