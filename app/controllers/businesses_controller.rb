class BusinessesController < ApplicationController
 
  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params) 
    if @business.save
      redirect_to @business
    else
      render :new
    end
  end

  def edit
    @business = Business.find params[:id]
  end
    
  def update
    @business = Business.find params[:id]
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to [@business], notice: 'Business was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def index
    @business.all
  end

  def show
    @business = Business.find params[:id]
  end

  def destroy
    @business = Business.find params[:id]
    @business.destroy
    respond_to do |format|
      format.html { redirect_to new_business_path }
    end
  end

  private

  def business_params
    params.require(:business).permit(:name, :value, :market, :persona, :business_model, :channels, :validation, :pretotype)
  end

end
