class User < ApplicationRecord
  # 自己参照
  belongs_to :partner, class_name: 'User', foreign_key: :partner_id, optional: true
end
