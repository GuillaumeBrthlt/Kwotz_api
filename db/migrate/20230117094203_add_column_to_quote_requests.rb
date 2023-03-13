class AddColumnToQuoteRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :quote_requests, :read, :boolean, default: false
  end
end
