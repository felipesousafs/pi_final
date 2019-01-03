class Api::V1::BlockSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :blocked_id
end
