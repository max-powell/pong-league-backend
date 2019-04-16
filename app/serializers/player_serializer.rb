class PlayerSerializer < ActiveModel::Serializer
  # attributes :id, :name, :image_url, :beaten, :lost_to
  #   class BeatenSerializer < ActiveModel::Serializer
  #     attributes :name
  #   end
  attributes :id, :name, :image_url, :beaten, :lost_to

  def beaten
    object.beaten.map do |b|
      b.name
    end
  end

  def lost_to
    object.lost_to.map do |b|
      b.name
    end
  end
end
