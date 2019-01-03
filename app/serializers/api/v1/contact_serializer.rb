class Api::V1::ContactSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :phone
end
