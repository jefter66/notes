using Measurements
include("/home/jefter66/Projects/Lablib/src/Stats.jl")

printstyled("Experimento 1 \n ", color =:green);
# densidade ρ da corda

## densidade pela geometria

m1 = 0.00552 ± 0.00001 # kg
l = 22.97 ± 0.01 # m

ρ1 = m1.val/l.val ± (m1.val*l.err + m1.err*l.val)/l.val^2
printstyled("Densidade linear calculada pela geometria \n"; color=:red);
println("ρ ± Δρ = (",ρ1, ") kg/m");


## densidade pela tração
m2 = 0.06067 ± 0.00001 #kg
v = [48.9, 49.5, 49.8, 49.7, 49.3]
vm = Statistics.mean(v);
v = round(vm,digits=3) ± round(standartDeviation(v),digits=2);
printstyled("Velocidade média e erro calculado pelo desvio padrão\n"; color=:red);
println("v_medio ± Δv = (",v, ") m/s")


# tração
g = 9.81
t = m2.val*g ± m2.err*g# Newtons
printstyled("Tração:\n"; color=:red);
println("T ± ΔT = (", t, ") N");

# densidade linear calculada a partir da tração
ρ2 = t.val/v.val^2 ± (2*t.val*v.val*v.err + t.err*v.val^2)/(v.val^4)
printstyled("Densidade linear \n "; color =:red);
println("ρ2 ± Δρ2= (", ρ2 , ") kg/m");



# equivalência

v1 = abs(ρ2.val - ρ1.val);
v2 = 2*(ρ1.err + ρ2.err);

printstyled("Checando equivalência", color=:red);
println("| x1 - x2 | < 2*(σ1 + σ2)");
println("| ",round(ρ1.val,digits=10) , " - ", round(ρ2.val,digits=10) , " | < 2*(", round(ρ1.err,digits=10), " + ", round(ρ2.err,digits=10), ")");
println(v1<v2);




# Ondas sonoras
printstyled("Experimento 2\n", color =:green);

## comprimento constante
printstyled("Comprimento constante \n ", color =:red);
L = (0.1100 ± 0.0001);
f = []
n = 5


## frequência constante
printstyled("Experimento 3\n", color =:green);

f = (2000±0.1);
L = [0.087,0.088,0.086,0.087];
ΔL = 0.1;

λ(L) = 2*L;

λs = Statistics.mean([λ(L[1]),λ(L[2]),λ(L[3]),λ(L[4])]) ± standartDeviation(L);


printstyled("Frequência constante \n ", color =:red);

println("Comprimento de onda médio: λ ± Δλ = ", λs);

v =  λs*f;
println("Velocidade média: v ± Δv = ",v);





## gás desconhecido
printstyled("Experimento 4 - Gás desconhecido 1° harmônico \n ", color =:red);
f = (2000±0.1);
n = 1
l = (0.23 ±0.0001);

v = 2*l*f;
println("Velocidade média: v ± Δv = ",v);
