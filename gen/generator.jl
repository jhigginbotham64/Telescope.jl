using Clang
using Clang.Generators
using Telescope_jll

cd(@__DIR__)

include_dir = joinpath(Telescope_jll.artifact_dir, "include") |> normpath
telescope_h = joinpath(include_dir, "telescope.h")

options = load_options(joinpath(@__DIR__, "generator.toml"))

args = get_default_args()
push!(args, "-I$include_dir")

ctx = create_context([telescope_h], args, options)

build!(ctx)