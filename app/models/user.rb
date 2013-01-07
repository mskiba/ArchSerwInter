class User
  include Mongoid::Document
  field :provider, :type => String
  field :uid, :type => Integer
  field :name, :type => String
  field :email, :type => String
  field :nickname, :type => String
  field :url, :type => String

	def admin?
		uid == 460870  # mój id na githubie
	end
	def student?
		(uid == nil) && (uid != 460870)
	end

  def self.from_omniauth(auth)
    where(:provider => auth['provider'], :uid => auth['uid']).first || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]

      user.nickname = auth['info']['nickname']
      user.email = auth['info']['email']
      user.name = auth['info']['name']
      user.url = auth['info']['urls']['GitHub']
    end
  end
end
