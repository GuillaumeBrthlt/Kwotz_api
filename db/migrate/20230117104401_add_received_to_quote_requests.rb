class AddReceivedToQuoteRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :quote_requests, :received_at, :datetime
  end
end
