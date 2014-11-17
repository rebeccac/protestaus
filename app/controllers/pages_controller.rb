class PagesController < ApplicationController
  def index
   @recent_protests = Protest.visible(params).limit(3).order("id desc")
   render layout: 'frontpage_layout'
   end

  def related_sites
  end

  def admin
  end
end
