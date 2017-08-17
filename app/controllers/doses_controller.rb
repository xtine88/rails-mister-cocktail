class DosesController < ApplicationController

  def new
    @dose = Dose.new(dose_params)
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def destroy
    dose = Dose.find(params[:id])
    cocktail = dose.cocktail
    dose.destroy
    redirect_to cocktail_path(cocktail)
  end

  private
    def dose_params
      params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
    end
end

# redirects to the created dose (FAILED - 2)
