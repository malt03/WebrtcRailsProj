class User < ActiveRecord::Base
  def self.fetch_by_token(token)
    find_by(id: token)
  end
end
