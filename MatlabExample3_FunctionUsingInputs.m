function MatlabExample3_FunctionUsingInputs(NumSim)
%
%
% estimation of the probability to obtain 8 or more heads, if a coin is tossed 10 times;            
%                                                      
% Author: Ph.D. M.Sc. Eng. Hristo Zhivomirov  02/08/16 
% from: https://www.mathworks.com/matlabcentral/fileexchange/55306-monte-carlo-estimation-examples-with-matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%clear, clc, close all
% initialization
c = 0;
N=str2double(NumSim);
%N = 1e7;
% run the simulation
for n = 1:N
    
    % toss the coin 10 times
    x = randi([0 1], 1, 10);
    
    % check if the event occurs
    if nnz(x == 1) >= 8
        
        % find the number of occurrences
        c = c + 1;
        
    end
end
% estimate the probability to obtain 8 or more heads, if a coin is tossed 10 times
% the real value is approx. 0.0547
Pest = c/N;
err = (Pest - 0.0547)/0.0547*100;
disp(['iterations: ' num2str(N)])
disp(['The estimated value is ' num2str(Pest)])
disp(['The error of the estimation is ' num2str(err) ' %'])
commandwindow
end