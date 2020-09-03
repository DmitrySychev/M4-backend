class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user_id, :thumbnail, :category
end
