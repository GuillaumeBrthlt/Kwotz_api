class AddColumnsToSupplierContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :supplier_contacts, :phone, :string
    add_column :supplier_contacts, :adress, :string
    add_column :supplier_contacts, :city, :string
    add_column :supplier_contacts, :zipcode, :string
  end
end
