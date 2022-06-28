page(
    model,
    class = "container",
    title = "JuliaHub 101 Application",
    [
        row( # row takes a tuple of cells. Creates a `div` HTML element with a CSS class named `row`.
            cell([
                h1(greet())
                h2("The Application")
                card(
                    class = "text-white",
                    style = "background: radial-gradient(circle, #9558b2 0%, #4063d8 100%); width: 12%",
                    card_section("Powered by JuliaHub"),
                )
            ]),
        )
        row([
            cell([ plot(:squareplotdata, layout = :squarelayout, config = "{ displayLogo:false }") ])
            cell([ plot(:cubeplotdata, layout = :cubelayout, config = "{ displayLogo:false }") ])
        ])
    ],
)
