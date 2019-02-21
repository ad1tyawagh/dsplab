% Design first order FIR filters (low pass, high pass, bandpass, and
% bandstop). Plot the frequency response, phase response, and impulse
% response. Use Matlab functions fir1, freqz, and impz.

    % Low Pass
    lowPass = fir1(1 , 0.1, 'low'); 
    fvtool(lowPass,1);
    
    % High Pass
    highPass = fir1(1, , 0.1, 'high');
    fvtool(highPass,1);
    
    % Band Pass
    bandPAss = fir1(1, [.100,.300], 'bandpass');
    fvtool(bandPass,1);
    
    % Band Stop
    bandStop = fir1(1, [.100, .300], 'stop');
    fvtool(bandStop,1);
    
% Repeat the above by increasing the order of filter. Plot response in
% the same figure and observe the effect of order of filter.
    
    % Low Pass
    lowPass8 = fir1(8 , .100, 'low');
    fvtool(lowPass8,1,lowPass,1);
    
    % High Pass
    highPass8 = fir1(8, , .100, 'high');
    fvtool(highPass8,1,highPass,1);
    
    % Band Pass
    bandPass8 = fir1(8, [.100,.300], 'bandpass');
    fvtool(bandPass8,1,bandStop,1);
    
    % Band Stop
    bandStop8 = fir1(8, [.100, .300], 'stop');
    fvtool(bandStop8,1,bandStop,1);

% Consider impulse response (length less than 10) of linear filters with
% symmetry/antisymmetry. Confirm the design criteria of Type1,
% Type2, Type3, and Type4 FIR filters.

hTypeI = [1 2 3 4 5 4 3 2 1];
fvtool((hTypeI/sum(hTypeI)),1);

hTypeII = [1 2 3 4 4 3 2 1];
fvtool((hTypeII/sum(hTypeII)),1);

hTypeIII = [1 2 3 4 5 -4 -3 -2 -1];
fvtool((hTypeIII/sum(hTypeIII)),1);

hTypeIV = [1 2 3 4 -4 -3 -2 -1];
fvtool((hTypeIV/sum(hTypeIV)),1);

% Design FIR filters (low pass, high pass, bandpass, and bandstop) with
% linear phase of any order.
    
    % fir1 will generate fir filters with linear phase of any order
    % Low Pass
    lowPass = fir1(20 , [0.1], 'low'); 
    fvtool(lowPass,1);
    
    % High Pass
    highPass = fir1(20, , [0.1], 'high');
    fvtool(highPass,1);
    
    % Band Pass
    bandPAss = fir1(20, [.100,.300], 'bandpass');
    fvtool(bandPass,1);
    
    % Band Stop
    bandStop = fir1(20, [.100, .300], 'stop');
    fvtool(bandStop,1);

% Design a low pass FIR filter with non-linear phase by avoiding the
% symmetry condition.

hTypeI = [1 2 3 4 5 1 2 3 4];
fvtool((hTypeI/sum(hTypeI)),1);
