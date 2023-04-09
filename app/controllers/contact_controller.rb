class ContactController < ApplicationController
  def new
  end

  def create
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    ContactMailer.contact_email(@name, @email, @message).deliver_now

    redirect_to root_path, notice: "Thank you for your message!"
  end
end
