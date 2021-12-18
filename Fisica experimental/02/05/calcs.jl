using Measurements
using Printf

printstyled("\nExperimento 1: Capacidade térmica\n", color =:blue);

# em gramas
Δm = 0.01;
mcopo = 51.82;
maq = 122.07;
maf = 125.02;

# em graus celsius
ΔT = 0.1;
taf = 12.4;
taq = 53.2;
tf = 31.4;

# calor especifico da água
ca = 1; 
@printf("%.3f · %.3f ( %.3f - %.3f) / (%.3f - %.3f) - %.3f · %.3f \n", maq,ca,taq,tf,tf,taf,maf,ca);
C = maq * ca * ( (taq - tf) / (tf - taf) ) - maf * ca;

ΔC = ((Δm * taq + ΔT * maq) * (tf - taf) + (2 * ΔT) * (maq * taq) ) / (tf - taf)^2

println("\nCapacidade térmica do calorimetro");
@printf("Ccal = %.2f ± %.2f \n", C, ΔC);

# em grama 
mcopo = 51.82 ±  Δm;
cAluminio = 0.218; 
Ccopo =  mcopo * cAluminio;

println("\nCapacidade térmica do copo");
@printf("Ccopo = %.3f ± %0.3f \n", Ccopo.val, Ccopo.err);


println("\nRelação de equivalência");
@printf("| x1 - x2 | < 2 · (σ1 + σ2) \n");
@printf("| %.3f - %.3f| < 2 · (%.3f + %.3f) \n", C,Ccopo.val,ΔC,Ccopo.err);
println(abs(C - Ccopo.val) < 2 * (ΔC + Ccopo.err));


printstyled("\nExperimento 2: Calor específico de um metal  ", color =:blue);

# em gramas 
mobjeto = 205.75 ± Δm;
ma = 216.07 ± Δm;     

# em graus celsius
ta = 13.1 ± ΔT;
to = 97.1 ± ΔT;
tf = 19.2 ± ΔT;


co = ((ma * ca + C ) * (ta - tf)) / (mobjeto * (tf - to));

println("\nCalor específico de um metal");
@printf("Co = %.4f ± %.4f \n", co.val, co.err);


printstyled("\nExperimento 3: Calor latente de condensação da água\n",color=:blue);

ta = 8.8  ± ΔT;
tf = 71.7  ± ΔT;
tc = 100  ± ΔT;

ma = 167.479  ± Δm;
mc = 187.02 - ma  ± Δm;

@printf("Massa condensada = %.3f", mc.val);

L = (((ma + C) * (ta - tf)) / mc) + (tc - tf);

println("\nCalor latente");
@printf("Lc = %.3f ± %.3f",L.val, L.err);

