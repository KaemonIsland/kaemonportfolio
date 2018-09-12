class PortfoliosController < ApplicationController
  def index
    @portfolio = Portfolio.all
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def create
    @portfolio = Portfolio.create!(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: "Your portfolio is now live." }
      else
        render 'new'
      end
    end
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Ther rrecord successfully updated."}
      else
        format.html { render :edit }
    end
  end
end

  def destroy
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
end
