class Record < ApplicationRecord
  belongs_to :member, class_name: 'User', foreign_key: 'member_id'
end
