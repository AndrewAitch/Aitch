class ImagesController < ApplicationController

    def new
        @catID = params[:catID]
        @pid = params[:ppid]
        @portfolio = Portfolio.find_by('id'=> @pid)

        render :layout => 'admin'
    end    
    def edit
        @catID = params[:catID]
        @id = params[:id]
        @pid = params[:ppid]

        @portfolio = Portfolio.find_by('id'=> @pid)
        @image = Image.find_by('id'=>params[:id])
        render :layout => 'admin'
    end
    def create
        @catID = params[:catID]
        @id = params[:id]
        @pid = params[:ppid]
        @portfolio = Portfolio.find_by('id'=> @pid)
        @image = @portfolio.images.create(img_params)
        redirect_to '/6833457/gestion/'+@catID.to_s+'/'+@pid.to_s+'/'
    end
    def update
        @catID = params[:catID]
        @id = params[:id]
        @pid = params[:ppid]
        @portfolio = Portfolio.find_by('id'=> @pid)
        @image = Image.find_by('id'=> params[:id])
        if @image.update(img_params)
            redirect_to '/6833457/gestion/'+@catID.to_s+'/'+params[:ppid].to_s
        else
            redirect_to '/6833457/gestion/'+@catID.to_s+'/'+params[:ppid].to_s+'/'+params[:id].to_s+'/edit'
        end
    end
    def destroy
        @catID = params[:catID]
        @id = params[:id]
        @pid = params[:ppid]
        @portfolio = Portfolio.find_by('id'=> @pid)
        @image = Image.find_by('id' => params[:id])
        @image.destroy
        redirect_to '/6833457/gestion/'+@catID.to_s+'/'+params[:ppid].to_s
    end
    def img_params
        params.require(:image).permit(:title,:date,:location,:urlv,:urll,:urlm,:urlh,:urlhh)
    end
end
