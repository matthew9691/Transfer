# This function calculated decimal degrees from dd, mm, ss
# put negative in front of function call 
# for latitudes if in sth hemisphere
degree_convert <- function(d,m,s=0){
        return(d + m/60 + s/3600)
}

# Calculate grid convergence
# l = longtitude at location
# l0 = central meridian
# r = latitude at location
grad <- function(l,l0,r){
        # convert to radians
        l <- l*(pi/180)
        l0 <- l0*(pi/180)
        r <- r*(pi/180)
        t <- -tan(l-l0)
        s <- sin(r)
        grid_convergence <- ((t*s)*180/pi) # answer in degrees
        return(grid_convergence)
        #return(round(grid_convergence,3))
}

