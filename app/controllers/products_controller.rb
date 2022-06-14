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

  def recomend_products
    return product.category.products.limit(4) if recent_products.blank?
    pp category_ids = recent_products.pluck(:category_id)#.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h
    pp brand_ids = recent_products.pluck(:brand_id)#.group_by{|e| e}.map{|k, v| [k, v.length]}.to_h

    Product.where(category_id: category_ids).or(Product.where(brand_id: brand_ids)).limit(4)
  end
end
