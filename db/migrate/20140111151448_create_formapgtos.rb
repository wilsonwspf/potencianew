class CreateFormapgtos < ActiveRecord::Migration
  def change
    create_table :formapgtos do |t|
      t.string :name

      t.timestamps
    end
  end
end
