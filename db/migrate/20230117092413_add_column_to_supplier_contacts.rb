class AddColumnToSupplierContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :supplier_contacts, :read, :boolean, default: false
  end
end
