module mopkg

include("svopt.jl")

function line_optimize(f, x0; eps=1e-3, maxit=1e5, method::SVOptMethod=SVPowellMinimize())
    optimizer = method
    optimizer(f, x0; eps=eps, nmax=maxit)
end

export line_optimize

end # module
