class CreateThankifications < ActiveRecord::Migration[5.1]
  def change
    create_table :thankifications do |t|

      t.timestamps
    end
  end
end
