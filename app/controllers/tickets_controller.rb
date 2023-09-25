class TicketsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
    # if @ticket.responses?
    # end
    @response = Response.where(ticket_id: @ticket).pluck(:id)
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @reviewer = Reviewer.all.sample
    @ticket.reviewer = @reviewer
    @ticket.user = current_user
    if @ticket.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def ticket_params
    params.require(:ticket).permit(:category, :description)
  end
end
