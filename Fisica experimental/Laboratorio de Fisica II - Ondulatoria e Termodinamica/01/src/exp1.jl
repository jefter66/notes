include("/home/jefter66/Workspace/lablib/src/calcs/Uncertainty.jl")

# Dados para calculo pela conservação de energia

# converti para o SI

# a massa é a soma das massas de cada peça
# m = 0.12125 + 0.4707 + 0.9238
# dm = 0.01*10^(-5) + 0.01*10^(-5) +  0.01*10^(-5)
# dm = 0.03*10^(-5)

global m = 1.51575;

global dm = 1e-5

global h = 0.467;
global dh = 1e-3;

global r = 6e-3;
global dr = 1e-4;

global g = 9.81;

global dt = 1e-2;



#=========================#
#  Conservação de energia #
#=========================#

function I(t)
    return ((g*(t^2))/(2*h) - 1)*m*r^2
end

function dI(t)
    termo1 = (2*r*dr*m + dm*r^2)*((g*t^2)/(2*h))
    termo2 = (g/2)*(((2*dt*t*h)+(dh*t^2))/h^2)*m*r^2
    termo2 = (2*r*dr*m + dm*r^2)
    return termo1 + termo2 - termo2
end

#==========================#
#  Pela geometria do corpo #
#==========================#

function Ic()
    raio = 6e-3
    M = 0.12125
    dM = 1e-5
    draio = 1e-4
    Ic = 0.5*(M)*(raio^2)
    dIc = raio*draio*M + 0.5*dM*(raio^2)
    println("Ic = " , Ic )
    println("ΔIc = ", dIc , "\n")
    return (Ic,dIc)
end

# id = Id()
# id[1] = valor da medida
# id[2] = valor da incerteza
function Id()
    raioInterno = 6e-4
    raioExterno = 6.25e-2

    M  = 0.4707
    dM = 1e-5
    draio = 1e-4

    Id = 0.5*M*(raioInterno^2 + raioExterno^2)
    dId = 0.5*dM*(raioInterno^2 + raioExterno^2) + M*(raioInterno*draio + raioExterno*draio)


 #  println("(1/2)*Δm*(r1^2 + r2^2) = ", dM*(raioInterno^2 + raioExterno^2))
 #  println("(1/2)*2*m*(r1*Δr + r2*Δr) = ", 0.5*2*M*(raioInterno*draio + raioExterno*draio))

    println("Id = ", Id)
    println("Δ Id = " , dId , "\n" )

    return (Id,dId)
end

function Ia()
    raioInterno = 0.0625
    raioExterno = 0.0760

    M  = 0.9238

    dM = 1e-5
    draio = 1e-4

    Ia = 0.5*M*(raioInterno^2 + raioExterno^2)
    dIa = 0.5*dM*(raioInterno^2 + raioExterno^2) + M*(raioInterno*draio + raioExterno*draio)

    println("Ia = ", Ia )
    println("Δ Ia = " , dIa , "\n"  )

    return (Ia,dIa)
end

function I()
    ia = Ia()
    ic = Ic()
    id = Id()
    println("I = Ia + Ic + Id \n I = " , ia[1] + ic[1] + id[1])
    println("\n ΔI = Δ Ia + ΔIc + ΔId \n Δ I= " , ia[2] + ic[2] + id[2])
end
