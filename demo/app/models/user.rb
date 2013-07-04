class User < ActiveRecord::Base
  belongs_to :post
  validates :first_name,presence:true
  before_create do |user|
    user.user_name=(user.first_name.to_s.gsub(/\s/,'')+user.last_name.to_s.gsub(/\s/,'')).downcase if user.user_name.blank?
  end
  validates :password,length:{in: 6..40}
end
