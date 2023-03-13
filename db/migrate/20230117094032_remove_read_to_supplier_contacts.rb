class RemoveReadToSupplierContacts < ActiveRecord::Migration[7.0]
  def change
    remove_column :supplier_contacts, :read
  end
end
