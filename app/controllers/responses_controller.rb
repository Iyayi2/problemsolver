class ResponsesController < ApplicationController
  before_action :authenticate_user!

  # def index
  #   @responses = Response.all
  # end

  # def show
  #   @response = Response.find(params[:id])
  # end

  def new
    @ticket = Ticket.find(params[:ticket_id])
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    @ticket = Ticket.find(params[:ticket_id])
    @response.ticket = @ticket
    @response.user = @ticket.user
    @response.reviewer = @ticket.reviewer
    # raise
    if @response.save!
      redirect_to ticket_path(@ticket)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def response_params
    params.require(:response).permit(:content)
  end
end
