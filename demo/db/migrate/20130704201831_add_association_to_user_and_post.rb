class AddAssociationToUserAndPost < ActiveRecord::Migration
  def change
    add_reference :users, :post
  end
end
