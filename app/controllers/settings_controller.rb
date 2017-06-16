class SettingsController < ApplicationController

	layout "admin"
	
  def index
  	@settings = current_user.setting
    # @user = current_user
    flash[:danger] = t('flash.titulo_index')
  end

  def show
  	@setting = Setting.find(params[:id])
  end

  def new
    @setting = current_user.build_setting
  end  

  def create
  	@setting = current_user.build_setting(setting_params)

  	if @setting.save
      # flash[:danger] = t('flash.hola')
  		redirect_to settings_path
  	else
  	 render :new
  	end 	
  end

  def edit
    @setting = Setting.find(params[:id])
  end 

  def update

  	@setting = Setting.find(params[:id])
 

    if @setting.update_attributes(setting_params)
       flash[:danger] = t('flash.registro_bien')
      redirect_to settings_path
    else
       flash[:danger] = t('flash.registro_mal')
      render :index
    end
  end
 




def destroy
   @setting = Setting.find(params[:id])
   @setting.destroy
   redirect_to settings_path
end   
    private

    def setting_params
     params.require(:setting).permit(:language,:country)
    end

end     