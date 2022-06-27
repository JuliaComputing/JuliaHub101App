using JuliaHub101
using Stipple
using StippleUI
using StipplePlotly

# CardDemo definition inheriting from ReactiveModel
# Base.@kwdef: that defines keyword based contructor of mutable struct
@reactive mutable struct CardDemo <: ReactiveModel end

function ui(model)
  [
    page( # page generates HTML code for Single Page Application
      model,
      class = "container",
      title = "Card Demo",
      partial = true,
      [
        row( # row takes a tuple of cells. Creates a `div` HTML element with a CSS class named `row`.
          cell([
            h1("JuliaHub 101")
            h2("The Application!")
          ]),
        )
        row(
          cell([
            card(
              class = "text-white",
              style = "background: radial-gradient(circle, #4063d8 0%, #9558b2 100%); width: 30%",
              card_section("Powered by JuliaHub"),
            ),
          ]),
        )
      ],
    ),
  ]
end

route("/") do
  model = CardDemo |> init
  html(ui(model), context = @__MODULE__)
end

up()
