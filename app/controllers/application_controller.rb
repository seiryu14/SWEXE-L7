class ApplicationController < ActionController::Base
private
   def currnt_cart
       if session[:cart_id]
           cart = Cart.find(session[:cart_id])
       else
           cart = Cart.create
           session[:cart_id] = cart_id
       end
       cart
   end
   helper_method :currnt_cart
   
    
end
