class AddColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :admin, null: false, foreign_key: true
  end
end
