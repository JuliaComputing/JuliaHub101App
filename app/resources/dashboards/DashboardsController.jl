module DashboardsController

using JuliaHub101
using Genie, Genie.Renderer.Html
using Stipple, StippleUI, StipplePlotly

const LIMS = -20:20
# CardDemo definition inheriting from ReactiveModel
# Base.@kwdef: that defines keyword based contructor of mutable struct
@reactive mutable struct CardDemo <: ReactiveModel
    greeting::R{String} = JuliaHub101.greet()
    squaretitle::PlotLayoutTitle = PlotLayoutTitle(text="X Squared")
    squarelayout::R{PlotLayout} = PlotLayout(title=squaretitle, showlegend=false)
    squareplotdata::R{PlotData} = PlotData(x=LIMS, y=LIMS .^ 2, mode="series")
    cubetitle::PlotLayoutTitle = PlotLayoutTitle(text="X Cubed")
    cubelayout::R{PlotLayout} = PlotLayout(title=cubetitle, showlegend=false)
    cubeplotdata::R{PlotData} = PlotData(x=LIMS, y=LIMS .^ 3, mode="series")
end

"""
    render()

Call to render the model using the page view.
"""
function render()
    model = CardDemo |> init
    return (model=model,)
end

end
