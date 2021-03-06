class PagesController < ApplicationController
  # GET /pages
  # GET /pages.xml
  def index
    @purchase = Purchase.new

   end

  # POST /pages
  # POST /pages.xml
  def create
    @purchase = Purchase.new(params[:purchase])

    respond_to do |format|
      if @purchase.save
        flash[:notice] = 'Thanks!'
        format.html { redirect_to(@purchase) }
        format.xml  { render :xml => @purchase, :status => :created, :location => @purchase }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purchase.errors, :status => :unprocessable_entity }
      end
    end
  end


end
