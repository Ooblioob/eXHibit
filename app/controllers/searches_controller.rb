class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def search
    @search = Search.new(search_params)

    if @search.valid?
      @streams = ImdbService.search(@search.title)
      flash[:notice] = "Found #{@streams['Search'].count} streams on IMDB."
    end
  end

  private

  def search_params
    params.require(:search).permit(:title)
  end
end
