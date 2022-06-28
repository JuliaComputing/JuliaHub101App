using Genie.Router, Genie.Renderer.Html
using DashboardsController

route("/") do
  html(
    :dashboards,
    "dashboards.jl";
    layout=:app,
    context = DashboardsController, DashboardsController.render()...)
end

route("/welcome") do
  serve_static_file("welcome.html")
end
