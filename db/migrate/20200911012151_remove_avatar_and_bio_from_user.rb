class RemoveAvatarAndBioFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :bio, :avatar
  end
end
