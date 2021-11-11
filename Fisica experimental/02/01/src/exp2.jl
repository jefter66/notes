include("/home/jefter66/Workspace/lablib/src/calcs/Uncertainty.jl")

function I1()
    Δr = 0.01
    r1 = 0.0335
    r2 = 0.06

    m = 2.2429
    Δm = 0.0001 

    I1 = (1/2)*m*(r1^2 + r2^2)
    ΔI1 = (1/2)*((Δm*(r1^2 + r2^2) + 2*m*(r1*Δr + r2*Δr)))
    println(" Ig ± Δ Ig = ", I1, " ± ", ΔI1)
#    return [I1,ΔI1]
end

function I2(ω1, ω)
   Δω=1e-3
   I2 = I1()[1]*( ω1/(ω1 - ω))
   ΔI2   =  (I1()[2]  + (I1()[2]*ω +  Δω*I1()[1])/(ω^2))
    println("I2 ± Δ I2 = ", I2, " ± ", ΔI2)
    return [I2, ΔI2]
end

function equivalencia(v1,v2,σ1, σ2)
    abs(v1-v2) < 2*(σ1 + σ2)
end

function ΔE(ω1, ω,I1, I2)
    Δω = 0.001
    Ef = (1/2)*(I1[1] + I2[1])*ω^2
    Ei = (1/2)*(I1[1])*ω1^2

    δE = ((1/2)*(I1[2] + I2[2])*ω^2 + (I1[1] + I2[1])*ω*Δω) + (1/2)*(I1[2]*ω1^2 + 2*ω1*Δω*I1[1])          
    
    println("E ± ΔE = ", Ef - Ei, " ± ", δE)
end

function results()
ω1 = [14.444, 22.765,24.353]
ω   = [7.453,12.777,13.629]
print("(1) : ")
I2_1 = I2(ω1[1], ω[1])
print("(2) : ")
I2_2 = I2(ω1[2],ω[2])
print("(3) : ")
I2_3 = I2(ω1[3],ω[3])

println("==============================================")

println("(1) & (2) : ", equivalencia(I2_1[1], I2_1[2], I2_2[1] , I2_2[2]))
println("(1) & (3) : ", equivalencia(I2_1[1],I2_1[2], I2_3[1],I2_3[2]))
println("(2) & (3) : ", equivalencia(I2_2[1],I2_2[2], I2_3[1], I2_3[2]))
   
println("==========================")

E1 = ΔE(ω1[1], ω[1], I1(), I2_1)
E2 = ΔE(ω1[2], ω[2], I1(), I2_2)
E3 = ΔE(ω1[3], ω[3], I1(), I2_3)
#println("ΔE1 ± δ E1 = ", E1[1], " ± ", E1[2])
#println("ΔE2 ± δ E2 =",  E2[1], " ± ", E2[2])
#println("ΔE3 ± δ E3 = ", E3[1] , " ± ", E3[2])

end


