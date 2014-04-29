class InformationSharingsController < ApplicationController
  def index
    @information_sharings = InformationSharing.order('created_at DESC')
		                        			  .paginate(page: params[:page])
		                        			  .per_page(10)
  end
end
