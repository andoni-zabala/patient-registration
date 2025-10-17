class MakePatientColumnsNonNullable < ActiveRecord::Migration[8.0]
  def change
    change_column_null :patients, :name, false
    change_column_null :patients, :email, false
    change_column_null :patients, :phone, false
  end
end
