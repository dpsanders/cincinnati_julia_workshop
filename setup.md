
## Running Julia online: JuliaBox
The easiest way to start using Julia is via the online [JuliaBox](http://www.juliabox.com) service.
This provides an online version of the [Jupyter notebook](http://www.jupyter.org), which we will be using throughout. Use `Shift-Enter` to execute a cell.

An alternative is [CoCalc](http://www.cocalc.com), which allows simultaneous editing of notebooks by several people.

## Installing Julia and Jupyter locally
To install Julia and Jupyter locally on your own machine, do the following.

[Note that it is *not* necessary to install Anaconda separately; Julia will do this automatically for you.]

1. Download and install the stable version of Julia (0.6.2) from [here](http://www.julialang.org/downloads) for your operating system.

    [If possible, please also download and install a "nightly build" from [here](https://julialang.org/downloads/nightlies.html), since we will be looking at some differences between the current stable version, 0.6.2, and the soon-to-be-released 1.0 version.]

2. Run the copy of Julia that you just installed.

    Execute the following commands within the Julia terminal ("REPL") environment, where you will see a `julia> ` prompt.

3. If you use Linux, first type:
```jl
julia> ENV["JUPYTER"] = ""
```

4. Now install the IJulia package, which will automatically install Jupyter (using `miniconda`):
```
julia> Pkg.add("IJulia")
```

5. Open the notebook as follows.
```jl
julia> using IJulia
julia> notebook()
```
By default, new notebooks will be created in your home directory. Navigate to a different directory to save them in your preferred location.

6. Install some of the packages that we will use during the course (you will need an internet connection)
```jl
julia> packages = split(
    """Plots GR PlotlyJS Interact
    BenchmarkTools
    DataFrames Query
    JLD2 Distributions StatPlots
    Optim JuMP
    ProfileView
    TreeView StaticArrays Revise
    DifferentialEquations
    MappedArrays
    Documenter PkgDev
    ForwardDiff
    """)    

julia> for package in packages
    Pkg.add(package)
end
```
## Get up to speed with basic Julia syntax

If you have had little exposure to Julia, please work through [this video tutorial](https://youtu.be/4igzy3bGVkQ) to get up to speed with basic Julia syntax, in particular the notebooks 1 through 8 (up to and including "Plotting"). The notebooks are available directly in JuliaBox, or [here](https://github.com/JuliaComputing/JuliaBoxTutorials/tree/master/intro-to-julia).

We suggest that you bookmark, download or even print out the following two "cheat sheets" with summaries of basic Julia syntax:
- a [one-page summary by Steven Johnson](https://github.com/stevengj/1806/blob/master/julia/Julia-cheatsheet.pdf)

- a [more extensive summary](https://juliadocs.github.io/Julia-Cheat-Sheet)

There is an ever-growing list of resources for learning Julia available on the [learning page](http://www.julialang.org/learning) of the Julia homepage; in particular, check out the [QuantEcon lectures](https://lectures.quantecon.org/jl).


## Julia IDE: Juno

There are two IDEs (Integrated Development Environments) available for Julia: Juno, based on the [Atom editor](https://atom.io/), and a Julia plug-in for the Visual Studio Code editor.

Please download Atom and install the `uber-juno` package; this will give you a Julia development environment. More info is available at the [Juno IDE homepage](http://junolab.org/).


## Questions and comments
Please contact  [David](dpsanders@ciencias.unam.mx) if you have any further questions and comments

