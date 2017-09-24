class Article < ApplicationRecord
  belongs_to :category
  before_save :set_slug, :set_seo_feilds

  def set_slug
    self.slug = self.title.parameterize
  end

  def set_seo_feilds
    self.meta_keywords = self.title.split(' ').to_sentence
  end
end
