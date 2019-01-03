class Api::V1::AddressSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :cep, :street, :number, :complement
end
