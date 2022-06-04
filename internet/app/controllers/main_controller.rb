class MainController < ApplicationController

  def index
    @brands = Brand.limit(3)
    @hits = Product.all.limit(8)
  end

  before_action :set_page_options

  def set_page_options
    @page_title = "MaximShues"
    @page_description = "Shues"
    @page_keywords = "Man Woman Kids"
  end

end
