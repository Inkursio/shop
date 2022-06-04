require 'rails_helper'

RSpec.describe RelatedProduct, type: :model do
  it{should belongs_to(:product)}
  it{should belongs_to(:related)}
end
