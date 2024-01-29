class RemoveQuntityFromLineItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :line_items, :quntity, :integer
  end
end
