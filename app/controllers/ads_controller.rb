class AdsController < ApplicationController

    before_action :require_logged_user
    
    def new
        @ad = Ad.new
    end

    def create
        @ad = current_user.ads.build(ad_params)
        if @ad.save
            redirect_to root_path, notice: "Anúncio criado com sucesso"
        end
    end

    def edit
        @ad = current_user.ads.find(params[:id])
    end

    def update
        @ad = current_user.ads.find(params[:id])
        if @ad.update(ad_params)
            redirect_to root_path, notice: "Anúncio alterado com sucesso"
        else
            render :edit
        end
    end

    private

    def ad_params
        params.require(:ad).permit(:title, :description, :prince)
    end
    
end