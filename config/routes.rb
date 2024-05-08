Rails.application.routes.draw do
  get("/", {:controller => "home", :action => "home_page"})
  
  get("/square/new", {:controller => "home", :action => "square_num"})

  get("/square/results", {:controller => "home", :action => "square_result"})

  get("/square_root/new", {:controller => "home", :action => "square_root"})

  get("/square_root/results", {:controller => "home", :action => "square_root_results"})

  get("/payment/new", {:controller => "home", :action => "new_payment"})

  get("/payment/results", {:controller => "home", :action => "payment_result"})

  get("/random/new", {:controller => "home", :action => "random_num"})

  get("/random/results", {:controller => "home", :action => "random_result"})
end
