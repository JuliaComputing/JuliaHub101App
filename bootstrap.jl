(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using JuliaHub101App
push!(Base.modules_warned_for, Base.PkgId(JuliaHub101App))
JuliaHub101App.main()
