% exp(j * pi/8 * n) for 0 to 32
theta = pi/8;
k = 1;
for l=-32:32
    phase_angle(k) = theta * l;
    if(l <= 32 && l >= 0) 
        y(k) = exp(l * theta * 1i);
    else
        y(k) = 0;
    end
    k = k + 1;
end

real_y = real(y);
im_y = imag(y);
abs_y = abs(real_y);

n = -32:32;

% Real Part
subplot(2, 3, 1);
stem(n, real_y, 'g');
title('Real Part');
xlabel('Samples');
ylabel('Values');

% Imaginary Part
subplot(2, 3, 2);
stem(n, im_y, 'b');
title('Imaginary Part');
xlabel('Samples');
ylabel('Values');

% Absolute Part
subplot(2, 3, 3);
stem(n, abs_y, 'g');
title('Absolute Part');
xlabel('Samples');
ylabel('Values');

% Absolute Part - Imaginary
subplot(2, 3, 4);
stem(n, abs(im_y), 'b');
title('Absolute Part - of Imaginary');
% plot(n, real_y, 'g', n, im_y, 'b', n, abs_y, 'b', n, abs(im_y), 'g');
xlabel('Samples');
ylabel('Values');

% Phase Part
subplot(2, 3, 5);
stem(n, phase_angle, 'c');
title('Phase Angle Part');
% legend('Imaginary Part', 'Real Part', 'Absolute (Real)', 'Absolute (Imaginary', 'Phase Angle');
xlabel('Samples');
ylabel('Values');
hold off

