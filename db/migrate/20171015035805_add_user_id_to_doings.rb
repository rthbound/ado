class AddUserIdToDoings < ActiveRecord::Migration[5.2]
  def change
    add_reference :doings, :user, foreign_key: true
  end
end
