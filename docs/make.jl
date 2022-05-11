using Documenter
using Telescope

makedocs(
    sitename = "Telescope",
    format = Documenter.HTML(prettyurls = !("local" in ARGS)),
    modules = [Telescope],
    strict = true,
    pages = [
      "Home" => "index.md",
      "API" => "api.md"
    ]
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/jhigginbotham64/Telescope.jl.git",
    devbranch = "main"
)
