@info "@__DIR__: " @__DIR__
@info "pwd(): " pwd()

ENV["HOST"] = "0.0.0.0"

push!(LOAD_PATH, abspath(realpath(joinpath(@__DIR__, "../src/"))))
push!(LOAD_PATH, abspath(realpath(joinpath(@__DIR__, ".."))))
@info "LOAD_PATH: " LOAD_PATH

ENV["STARTSERVER"] = true
ENV["GENIE_ENV"] = "prod"
ENV["EARLYBIND"] = true

@info "haskey EARLYBIND" haskey(ENV, "EARLYBIND")
@info "EARLYBIND" ENV["EARLYBIND"]

bootpath = abspath(realpath(joinpath(@__DIR__, "..")))
@info "Bootstrap path: " bootpath
cd(bootpath)
run(`julia --project=. bootstrap.jl`)
