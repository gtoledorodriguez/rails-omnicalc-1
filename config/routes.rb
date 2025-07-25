Rails.application.routes.draw do
  get("/", { controller: "calculate", action: "square_new"})
  get("/square/new", { controller: "calculate", action: "square_new"})
  get("/square/results", { controller: "calculate", action: "square_result"})

  get("/square_root/new", { controller: "calculate", action: "square_root_new"})
  get("/square_root/results", { controller: "calculate", action: "square_root_result"})
end
