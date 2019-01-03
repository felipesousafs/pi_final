class Api::V1::CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :text, :post_id, :user_id
end
