clc;
clear;

income = input('Enter the income (between 0*10^3$ to 100*10^3$): ');
market_value = input('Enter the market value (between 0*10^4$ to 100*10^4$): ');
location = input('Enter the location (between 0 to 10): ');
assets = input('Enter the assets (between 0*10^4$ to 100*10^4$): ');
interest = input('Enter the interest (between 0% to 10%): ');

income = income / 100000;
market_value = market_value / 1000000;
assets = assets / 1000000;
location = location / 10;
interest = interest / 10;

% Home Evaluation
home = readfis('home.fis');
input = [market_value location];
home_eval = evalfis(home, input);

% Applicant Evaluation
applicant = readfis('applicant.fis');
input = [assets income];
applicant_eval = evalfis(applicant, input);

% Credit Evaluation
credit = readfis('credit.fis');
input = [income interest applicant_eval home_eval];
credit_eval = evalfis(credit, input);

fprintf('The Credit evaluation would be %f %% \n',credit_eval*100);

