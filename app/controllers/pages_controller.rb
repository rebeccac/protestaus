class PagesController < ApplicationController
  def index
   render layout: 'frontpage_layout'
   @recent_protests = Protest.all(:order => "id desc", :limit => 6).reverse
  end

  def related_sites
  end

  def admin
  end
end
