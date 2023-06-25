using Measurements
using Printf
include("/home/jefter66/Projects/Lablib/src/Stats.jl")
include("/home/jefter66/Projects/Lablib/src/LeastSquares.jl")
γ(h1,h3) = return (h1) / (h1 - h3);

Δh = 0.1;

h1 = [18.1 ± Δh, 16.0 ± Δh, 17.6 ± Δh];
h3 = [5.7, 4,5.1];

ɣs = [γ(h1[1],h3[1]), γ(h1[2],h3[2]), γ(h1[3],h3[3])];
deviation(ɣs);

A(d) = return π * (d^2 / 4);
# ΔA = 0.00001;

P0 = 691 * 133.322 ± 0.01; # ΔP = 0.01;
g = 9.81;

d = 0.016 ± 0.001; # Δd = 0.001;
m = 0.0167 ± 0.0001; # Δm = 0.0001;
V = 0.0104  ± 0.0001; # ΔV = 0.0001;
P = (m * g)/A(d) + P0;
T = 1.2  ± 0.01; # ΔT = 0.01;

𝛄 = 4 * π^2 * ((m * V)/(P * A(d)^2 * T^2));
#x, Δx = m * V, Δm * V + ΔV * m;
#y, Δy = P*A(d)^2 * T^2, 2*T*ΔT*(P*A(d)^2)  +  (ΔP * A(d)^2 + 2 * A(d) * ΔA * P);
#Δ𝛄 = 4 * π^2 * (Δx * y + Δy * x) / (y^2);


@printf("𝛄 = %.6f ± %.6f", 𝛄.val, 𝛄.err);



x = [24.7,1.0,-196.0,97.0];
y = [69.2,62.8,17.7,82.3];


leastSquares(x,y);









