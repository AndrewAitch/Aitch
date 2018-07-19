class AdminController < ApplicationController
    http_basic_authenticate_with name: 's6Y&?84!&3Wc8pjRDm4Lu[#8FO9x', password: 'w7Va2dxtT74cB6X4wtc5'
    def index 
        render :layout => 'admin'
    end
    def gestion
        @catt = params[:catID]
        @portfolios = Portfolio.where('catID' => @catt)
    end
    def pgestion
        @pid = params[:ppid]
        @catt = params[:catID]
        @portfolio = Portfolio.find_by('id'=> @pid)
        @images = @portfolio.images
    end

end
