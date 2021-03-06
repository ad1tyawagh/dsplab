% Sum N uniform random variable. Plot histogram of sum for
% N = 5, 10, 50, 100.

A1 = rand([1 5]);
A2 = rand([1 10]);
A3 = rand([1 50]);
A4 = rand([1 100]);

figure(1); (hist(A1));
figure(2); (hist(A2));
figure(3); (hist(A3));
figure(4); (hist(A4));

% Use the delay profile from 5G ETSI document Table 7-7-2.1 TDL-A
% page 64 to generate a channel Rayleigh fading channel. Use Matlab
% rayleighchan(). Use fd=0 and delay spread 100ns.

delay = []
cd = 1;
while(cd < 24)
    delay(cd) = input('Enter a delay value: ');
    cd = cd+1;
end
pdB = []
cp = 1;
while(cp < 24)
    pdB(cp) = input('Enter a pdB value: ');
    cp = cp+1;
end

channels = rayleighchan(100, 0, delay, pdB);


% Show that the channel is indeed Rayleigh by plotting histogram of
% magnitude of channel gains.


% Use histogram to show that the channel gain is Gaussian.


