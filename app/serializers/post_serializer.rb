class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  belongs_to :author, serializer: AuthorSerializer
  #has_many :post_tags, serializer: Post
  has_many :tags, through: :post_tags

  def short_content
    "#{object.content[0..39]}..."
  end



end


