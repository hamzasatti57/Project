class HomeController < ApplicationController
 
  def index
    session[:conversations] ||= []
 
    @users = User.all.where.not(id: current_user)
    @conversations = Conversation.includes(:recipient, :messages)
                                 .find(session[:conversations])
  end	
   def start

  end 
  def about
 
  end
 def blog
 
  end
   def ceo
 
  end
   def faqs
 
  end
   def error
 
  end
   def about
 
  end

  def user
  end

  def type
  end

end
