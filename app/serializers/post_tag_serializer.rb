class PostTagSerializer < ActiveModel::Serializer
  belongs_to :tag, serializer: TagSerializer

  def tag
    object.tag.slice(:name)
  end

end
