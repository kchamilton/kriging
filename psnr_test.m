% Original Matrix
A = [1 2 1; 2 3 6; 5 8 2];

% Noisy Matrix
B = [1 3 1; 2 3 5; 5 8 1];

% Calculate PSNR
C    = A - B;
SQE  = C.^2;
MSE  = mean(SQE(:));
RMSE = sqrt(MSE);
max_val = 255;
PSNR = 20*log10(max_val/RMSE)