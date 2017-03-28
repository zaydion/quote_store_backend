class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :price, :size
end
