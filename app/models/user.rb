class User < ActiveRecord::Base
has_many :invitations
has_many :jobs, :through => :invitations

def self.from_omniauth(auth)
  where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
    user.uid = auth.uid
    user.name = auth.info.name
    user.oauth_token = auth.credentials.token
    if !User.find_by_uid(user.uid)
      user.coins = 100
    end
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    user.save!
  end
end

end
