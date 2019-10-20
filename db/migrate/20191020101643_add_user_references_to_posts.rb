class AddUserReferencesToPosts < ActiveRecord::Migration[5.2]
  def change
    # add_column :posts, :user_id, :integer
    add_reference :posts, :user, index: true
  end
end
