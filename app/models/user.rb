class User < ActiveRecord::Base
  attr_accessible :email, :name, :provider, :uid, :url
end
