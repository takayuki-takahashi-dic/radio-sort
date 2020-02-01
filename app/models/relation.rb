class Relation < ApplicationRecord
  belongs_to :followed, class_name: "User", optional: true
  belongs_to :follower, class_name: "User", optional: true
end
