class SettingsController < ApplicationController

	layout "admin"
	
  def index
  	@setting = current_user.setting
    # @user = current_user
    # flash[:danger] = t('setting.titulo_index')
    # flash[:notice] = t('setting.registro_bien')
  end

  def show
  	@setting = Setting.find(params[:id])
    # flash[:notice] = t('setting.registro_bien')
  end

  def new
    @setting = current_user.build_setting
    flash[:danger] = t('setting.country')
    flash[:danger] = t('setting.language')
  end  

  def create
  	@setting = current_user.build_setting(setting_params)

  	if @setting.save
      flash[:notice] = t('setting.registro_bien')
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
      # flash[:notice] = t('setting.registro_bien')
      redirect_to settings_path
    else
      render :index
      # flash[:danger] = t('setting.registro_mal')
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