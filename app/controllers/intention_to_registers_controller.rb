class IntentionToRegistersController < ApplicationController

  def create
    @intention_to_register = IntentionToRegister.new(intention_to_register_params)
    if @intention_to_register.save
      flash[:success] = "您的信息我们已经收到，会尽快的联系您。"
      redirect_to root_url
    else
      confirm
      flash[:err] = "请填写相关信息再提交"
      redirect_to root_url
    end
  end

  def index
    @areas = Area.all
  end
  private

    def intention_to_register_params
      params.require(:intention_to_register).permit(:name,
                                                    :qq,
                                                    :tel,
                                                    :new_home_id,
                                                    :sex,
                                                    :budget,
                                                    :area,
                                                    :email)
    end
end
