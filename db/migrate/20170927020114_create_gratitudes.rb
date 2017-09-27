class CreateGratitudes < ActiveRecord::Migration[5.1]
  def change
    create_table :gratitudes do |t|
      t.text :body
      t.references :thankification, foreign_key: true

      t.timestamps
    end
  end
end
