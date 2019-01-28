class Message < ApplicationRecord

  validates :postid, {presence: true}

  validates :content, {presence: true}
end
