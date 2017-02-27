N = 4;
L = zeros(31);
s = zeros(31);
L[1] = sqrt(2);
s[1] = N*L[1]/2;
for k = 1:30
  N = N*2;
  z = L[k]^2/4
  L[k+1] = sqrt(2)*sqrt(z/(1 + sqrt(1 - z)))
  s[k+1] = N*L[k+1]/2;
end

using PyPlot
semilogy(1:length(s), abs(s-pi));
ylabel("|s_k-\pi|");
xlabel("k")
