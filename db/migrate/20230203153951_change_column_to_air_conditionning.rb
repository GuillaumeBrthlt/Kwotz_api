class ChangeColumnToAirConditionning < ActiveRecord::Migration[7.0]
  def change
    rename_column :air_conditionnings, :type, :outside_unit_type
  end
end
