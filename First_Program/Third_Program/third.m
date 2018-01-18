% even and odd parts of x(n) = 0.8^n 
k = 1;
for n=-32:32
    positive_x(k) = (0.8) .^ n;
    k = k + 1;
end

k = 1;
for n = -32:32
    negative_x(k) = (0.8) .^ (-n);
    k = k + 1;
end

even_y = ( positive_x + negative_x ) / 2;
odd_y = ( positive_x - negative_x ) / 2;

range = [-32:32]
subplot(3, 1, 1);
stem(range, positive_x, 'r');
title('Original Function');
xlabel('Sample');
ylabel('Values');

subplot(3, 1, 2);
stem(range, even_y, 'b');
title('Even Function');
xlabel('Sample');
ylabel('Values');

subplot(3, 1, 3);
stem(range, odd_y, 'g');
title('Odd Function');
xlabel('Sample');
ylabel('Values');