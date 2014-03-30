class NewHomesController < ApplicationController
  def index
    @new_homes = NewHome.order('created_at DESC')
                        .paginate(page: params[:page])
                        .per_page(5)
    @keyword = Sunspot.search(NewHome) do
      keywords params[:keyword]
      order_by :created_at, :desc
      paginate :page => params[:page], :per_page => 5
    end

    @new_homes = @keyword.results

    respond_to do |format|
      format.html
      format.json { render json: @new_homes }
      format.js
    end
  end

  def show
    @new_home = NewHome.find(params[:id])
  end
end
