class SiteController < ApplicationController
  def index
    @title = "Home"
  end
  
  def statement
    @title = "Statement"
  end
  
  def design_statement
    @title = "Statement"
  end
  
  def books
    @title = "Books"
  end  
             
  def resume
    @title = "Resume"
  end
  
  def contact
    @title = "Contact"
  end
  
   def send_contact_message
     @contact = Contact.new(params[:contact]) 
     if @contact.save 
       begin 
         Mailer::deliver_contact_message(@contact) 
         flash[:notice] = "Your mail has been delivered." 
         redirect_to :action =>"contact" 
       rescue  
         flash[:notice] = "Your mail could not be sent."
         redirect_to :action =>"contact" 
       end 
     else 
       render :action =>"contact" 
     end 
   end

end
