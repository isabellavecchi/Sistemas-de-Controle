function uk = fcn(ek)

persistent ek_1 ek_sum

if isempty(ek_1)
    ek_1 = 0;
    ek_sum = 0;
end

Ts = 0.01;

Kp = 1; 
Ki = 5;
Kd = 1; 

ek_sum = Ts*ek + ek_sum;

uk = Kp * ek + ...
     Ki * (ek_sum) + ...
     (Kd/Ts) * (ek - ek_1);

ek_1 = ek
