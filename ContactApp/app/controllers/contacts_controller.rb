class ContactsController < ApplicationController
  before_action :find_contact, only: %i(show edit update destroy)

  def index
    @contacts = current_user.contacts
  end

  def show; end

  def new
    @contact = current_user.contacts.new
  end

  def create
    @contact = current_user.contacts.new(contact_params)
    if @contact.save
      flash[:notice] = 'Zapisano kontakt'
      redirect_to contacts_path
    else
      flash[:alert] = 'Nie udało się zapisać kontaktu'
      render :new
    end
  end

  def edit; end

  def update
    if @contact.update(contact_params)
      flash[:notice] = 'Zmieniono kontakt'
      redirect_to contacts_path
    else
      flash[:alert] = 'Nie udało się zmienić kontaktu'
      render :edit
    end
  end

  def destroy
    @contact.delete
    flash[:notice] = 'Kontakt usunięty'
    redirect_to contacts_path
  end

  protected

  def find_contact
    @contact = current_user.contacts.find(params[:id])
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :surname, :nick, :email, :social, :notes)
  end
end
