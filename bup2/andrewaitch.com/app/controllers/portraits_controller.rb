class PortraitsController < ApplicationController
    http_basic_authenticate_with name: 's6Y&?84!&3Wc8pjRDm4Lu[#8FO9x', password: 'w7Va2dxtT74cB6X4wtc5', except: [:index,:show]
    
    @@catID=1
    def new
        @catID = @@catID
        @portfolio = Portfolio.new
        render :layout => 'admin'
    end



    def create 
        @portfolio = Portfolio.new(cat_params)
        if @portfolio.save 
            redirect_to '/6833457/gestion/'+@@catID.to_s
        else
            render 'new'
        end
    end


    def edit 
        @catID = @@catID
        @pid = params[:pid]
        @portfolio = Portfolio.find_by('id'=>params[:id])
        render :layout => 'admin'
    end

    def update 
        @portfolio = Portfolio.find_by('id'=> params[:id])
        if @portfolio.update(cat_params)
            redirect_to '/6833457/gestion/'+@@catID.to_s
        else
            render 'edit'
        end
    end



    def destroy 
        @portfolio = Portfolio.find_by('id' => params[:id])
        images.each do |i|
            i.destroy
        end
        @portfolio.destroy
        redirect_to '/6833457/gestion/'+@@catID.to_s
    end



    def index 
        @portfolios = Portfolio.where('catID' => @@catID ).order('id asc')
        @portfolio = Portfolio.first 
        @images = @portfolio.images
        render 'show'
    end
    def show 
        @portfolios = Portfolio.where('catID' => @@catID )
        @portfolio = Portfolio.where('catID' => @@catID).find_by('pname' => params[:pname])
        @images = @portfolio.images
    end


    private
        def cat_params
            params.require(:portfolio).permit(:dpname,:pname,:text,:catID)
        end

end
