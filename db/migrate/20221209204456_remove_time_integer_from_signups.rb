class RemoveTimeIntegerFromSignups < ActiveRecord::Migration[6.1]
  def change
    remove_column :signups, :time_integer, :string
  end
end
