class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  belongs_to :author
  has_many :tags

  def short_content
    "#{object.content[0..39]}..."
  end
end
