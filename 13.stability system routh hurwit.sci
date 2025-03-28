clear;
clc;
xdel(winsid());
mode(0);
s = %s;
H = s^4 + 2*s^3 + 3*s^2 + 4*s + 5;
disp(H, 'The given characteristic equation 1-G(s)H(s) =');

c = coeff(H, 'descend'); // Ensure coefficients are extracted in the correct order
len = length(c);
r = routh_t(c); // Pass coefficients instead of H

disp(r, 'Routh's table =');

x = 0;
for i = 1:len
    if (r(i, 1) < 0)
        x = x + 1;
    end
end

if (x >= 1)
    printf("From Routh's table, it is clear that the system is unstable.\n");
else
    printf("From Routh's table, it is clear that the system is stable.\n");
end
