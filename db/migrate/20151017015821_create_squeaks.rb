class CreateSqueaks < ActiveRecord::Migration
  def change
    create_table :squeaks do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :message

      t.timestamps null: false
    end
  end
end
