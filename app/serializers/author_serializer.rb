class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: PostSerializer
end
