N = input("Number of graphs: ");

x = linspace(-5, 5, 10);
for i = 1:N
  AMP = input("Input amplitude");
  FREQ = input("Input frequency");
  PHASE = input("Input phase");

  disp("AMP is: "); disp(AMP);
  disp("FREQ is: "); disp(FREQ);
  disp("PHASE is: "); disp(PHASE);

  
  subplot(1, N, i);
  plot(x,AMP*sin(2*(pi/FREQ)*x + PHASE))
  xlabel('Time Axis'); ylabel('Amplitude');
  title('Plot with multiple inputs for Sine graph');  
 end
 