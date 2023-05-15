class TagSerializer < ActiveModel::Serializer
  attributes :name
  has_many :posts, through: :post_tags
  belongs_to :post_tags

end
