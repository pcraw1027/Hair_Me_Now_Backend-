class SocialSiteSerializer < ActiveModel::Serializer
  attributes :id, :site_name, :url

  has_one :stylist
  has_one :salon

end
