Rails.application.routes.draw do
  get("/", { controller: "calculate", action: "square_new"})
  get("/square/new", { controller: "calculate", action: "square_new"})
  get("/square/results", { controller: "calculate", action: "square_result"})

  get("/square_root/new", { controller: "calculate", action: "square_root_new"})
  get("/square_root/results", { controller: "calculate", action: "square_root_result"})

  get("/payment/new", { controller: "calculate", action: "payment_new"})
  get("/payment/results", { controller: "calculate", action: "payment_result"})

  get("/random/new", { controller: "calculate", action: "random_new"})
  get("/random/results", { controller: "calculate", action: "random_result"})
end
