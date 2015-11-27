class User < ActiveRecord::Base
  def self.fetch_by_token(token)
    find_by(id: token.to_i)
  end
end
