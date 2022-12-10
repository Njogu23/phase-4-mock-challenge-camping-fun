class SignupSerializer < ActiveModel::Serializer
  attributes :id, :camper_id, :activity_id, :time_integer
end
