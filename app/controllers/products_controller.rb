class ProductsController < ApplicationController
  after_action :register_visit, only: [:show]

  def show
    @product = Product.find(params[:id])
    set_page_options
  end

  helper_method :recent_products, :recomend_products
  attr_accessor :product

  def recent_products
    [] if recently.none?
    Product.where(id: recently)
  end

  def recently
    session[:viewed_products] ||= []
  end

  def register_visit
    session[:viewed_products] ||= []
    session[:viewed_products] = ([@product.id] + session[:viewed_products])
                                .uniq
                                .take(4)
  end

  def set_page_options
    set_meta_tags product.slice(:title, :keywords, :description)
    add_breadcrumb 'Home', root_path
  end

  CATEGORY_WEIGHT = 10
  BRAND_WEIGHT = 2

  def recomend_products
    return product.category.products.limit(4) if recent_products.blank?

    category_ids = recent_products.pluck(:category_id)
    categories = category_ids.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    brand_ids = recent_products.pluck(:brand_id)
     brands = brand_ids.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h

    base_products = Product.where(category_id: category_ids).or(Product.where(brand_id: brand_ids))

    validate_products = base_products.map{|product|
              product.weight_value = (categories[product.category_id] || 0) * CATEGORY_WEIGHT + (brands[product.brand_id] || 0) * BRAND_WEIGHT
              product
            }.sort_by(&:weight_value).first(4)
  end
end
