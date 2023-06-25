M, ΔM = 0.0266, 0.0001
L, ΔL = 0.380, 0.001
L1,ΔL1= 0.025, 0.001
L2,ΔL2= 0.190, 0.001
d,Δd= 0.008,0.001

m,Δm = 0.0753, 0.0001
h,Δh = 0.02, 0.001
de,Δde = 0.025, 0.001
di,Δdi = 0.008, 0.001

# Barra

Ih = (1/12)*M*L^2 + (1/16)*M*de^2
ΔIh = (1/12)*(ΔM*L^2 + 2*M*L*ΔL) + (1/16)*(ΔM*d + 2*M*d*Δd)

Ih_eixo = Ih + M*(L2 - L1)^2
ΔIh_eixo = ΔIh + ΔM*(L2-L1)^2 + 2*M*(L2-L1)*(ΔL2+ΔL1)



# Cilindro

Icl = (1/16)*m*(de^2 + di^2) +  (1/12)*m*h^2
ΔIcl = (1/16)*(Δm*(de^2+di^2) + 2*m*(de*Δde+di*Δdi)) + (1/12)*(Δm*h^2 + 2*m*h*Δh)

Icl_cm = Icl + m*(L2 - h/2)^2
ΔIcl_cm = ΔIcl + Δm*(L2- h/2)^2 + 2*m*(L2-h/2)*(ΔL2+ Δh/2)

Icl_eixo = Icl + m*(L - L1 - h/2)^2
ΔIcl_eixo = ΔIcl + Δm*(L - L1 - h/2)^2 + 2*m*(L-L1-h/2)*(ΔL +ΔL1 + Δh/2)

println("\n Sistema no centro de massa\n")
println("======================")
println("Ih ± ΔIh =" , round(Ih,digits=8), " ± ", round(ΔIh,digits=8))
println("Icl_cm ± ΔIcl_cm =" , round(Icl_cm,digits=8), " ± ", round(ΔIcl_cm,digits=8))

println("\n Sistema no eixo \n ")
println("======================")
println("Ih_eixo ± ΔIh_eixo =" , round(Ih_eixo,digits=8), " ± ", round(ΔIh_eixo,digits=8))
println("Icl_eixo ± ΔIh_eixo =" , round(Icl_eixo,digits=8), " ± ",round(ΔIcl_eixo,digits=8))
