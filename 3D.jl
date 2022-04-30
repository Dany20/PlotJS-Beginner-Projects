using PlotlyJS, DataFrames, RDatasets, Colors, Distributions, LinearAlgebra
#create the random_line function
function random_line()
    #create a random number expression
    n = 400
    #create a cumulative sum for each random number selection
    rw() = cumsum(randn(n))
    #create the first trace
    trace1 = scatter3d(;x=rw(),y=rw(), z=rw(), mode="lines",
                        marker=attr(color="#1f77b4", size=12, symbol="circle",
                                    line=attr(color="rgb(0,0,0)", width=0)),
                        line=attr(color="#1f77b4", width=1))
    #create the second trace
    trace2 = scatter3d(;x=rw(),y=rw(), z=rw(), mode="lines",
                        marker=attr(color="#9467bd", size=12, symbol="circle",
                                    line=attr(color="rgb(0,0,0)", width=0)),
                        line=attr(color="rgb(44, 160, 44)", width=1))
    #create the third trace
    trace3 = scatter3d(;x=rw(),y=rw(), z=rw(), mode="lines",
                        marker=attr(color="#bcbd22", size=12, symbol="circle",
                                    line=attr(color="rgb(0,0,0)", width=0)),
                        line=attr(color="#bcbd22", width=1))
    #create the layout for the PlotlyJS
    layout = Layout(autosize=false, width=500, height=500,
                    margin=attr(l=0, r=0, b=0, t=65))
    #create the plot
    plot([trace1, trace2, trace3], layout)
end
#call the function
random_line()