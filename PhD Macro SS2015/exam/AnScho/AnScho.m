%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'AnScho';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('AnScho.log');
M_.exo_names = 'e_z';
M_.exo_names_tex = 'e\_z';
M_.exo_names_long = 'e_z';
M_.exo_names = char(M_.exo_names, 'e_g');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_g');
M_.exo_names_long = char(M_.exo_names_long, 'e_g');
M_.exo_names = char(M_.exo_names, 'e_R');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_R');
M_.exo_names_long = char(M_.exo_names_long, 'e_R');
M_.endo_names = 'y';
M_.endo_names_tex = 'y';
M_.endo_names_long = 'y';
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'p');
M_.endo_names_tex = char(M_.endo_names_tex, 'p');
M_.endo_names_long = char(M_.endo_names_long, 'p');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names_long = char(M_.endo_names_long, 'R');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names_long = char(M_.endo_names_long, 'g');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names_long = char(M_.endo_names_long, 'z');
M_.endo_names = char(M_.endo_names, 'YGR');
M_.endo_names_tex = char(M_.endo_names_tex, 'YGR');
M_.endo_names_long = char(M_.endo_names_long, 'YGR');
M_.endo_names = char(M_.endo_names, 'INFL');
M_.endo_names_tex = char(M_.endo_names_tex, 'INFL');
M_.endo_names_long = char(M_.endo_names_long, 'INFL');
M_.endo_names = char(M_.endo_names, 'INT');
M_.endo_names_tex = char(M_.endo_names_tex, 'INT');
M_.endo_names_long = char(M_.endo_names_long, 'INT');
M_.param_names = 'tau';
M_.param_names_tex = 'tau';
M_.param_names_long = 'tau';
M_.param_names = char(M_.param_names, 'kap');
M_.param_names_tex = char(M_.param_names_tex, 'kap');
M_.param_names_long = char(M_.param_names_long, 'kap');
M_.param_names = char(M_.param_names, 'psi1');
M_.param_names_tex = char(M_.param_names_tex, 'psi1');
M_.param_names_long = char(M_.param_names_long, 'psi1');
M_.param_names = char(M_.param_names, 'psi2');
M_.param_names_tex = char(M_.param_names_tex, 'psi2');
M_.param_names_long = char(M_.param_names_long, 'psi2');
M_.param_names = char(M_.param_names, 'rhoR');
M_.param_names_tex = char(M_.param_names_tex, 'rhoR');
M_.param_names_long = char(M_.param_names_long, 'rhoR');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, 'rhog');
M_.param_names_long = char(M_.param_names_long, 'rhog');
M_.param_names = char(M_.param_names, 'rhoz');
M_.param_names_tex = char(M_.param_names_tex, 'rhoz');
M_.param_names_long = char(M_.param_names_long, 'rhoz');
M_.param_names = char(M_.param_names, 'r_A');
M_.param_names_tex = char(M_.param_names_tex, 'r\_A');
M_.param_names_long = char(M_.param_names_long, 'r_A');
M_.param_names = char(M_.param_names, 'p_A');
M_.param_names_tex = char(M_.param_names_tex, 'p\_A');
M_.param_names_long = char(M_.param_names_long, 'p_A');
M_.param_names = char(M_.param_names, 'gam_Q');
M_.param_names_tex = char(M_.param_names_tex, 'gam\_Q');
M_.param_names_long = char(M_.param_names_long, 'gam_Q');
M_.param_names = char(M_.param_names, 'stdR');
M_.param_names_tex = char(M_.param_names_tex, 'stdR');
M_.param_names_long = char(M_.param_names_long, 'stdR');
M_.param_names = char(M_.param_names, 'stdg');
M_.param_names_tex = char(M_.param_names_tex, 'stdg');
M_.param_names_long = char(M_.param_names_long, 'stdg');
M_.param_names = char(M_.param_names, 'stdz');
M_.param_names_tex = char(M_.param_names_tex, 'stdz');
M_.param_names_long = char(M_.param_names_long, 'stdz');
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 9;
M_.param_nbr = 13;
M_.orig_endo_nbr = 9;
M_.aux_vars = [];
M_.Sigma_e = zeros(3, 3);
M_.Correlation_matrix = eye(3, 3);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('AnScho_static');
erase_compiled_function('AnScho_dynamic');
M_.lead_lag_incidence = [
 1 5 14;
 0 6 0;
 0 7 15;
 2 8 0;
 3 9 16;
 4 10 17;
 0 11 0;
 0 12 0;
 0 13 0;]';
M_.nstatic = 4;
M_.nfwrd   = 1;
M_.npred   = 1;
M_.nboth   = 3;
M_.nsfwrd   = 4;
M_.nspred   = 4;
M_.ndynamic   = 5;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(9, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(13, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 34;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
set_dynare_seed(123);
M_.params( 1 ) = 2.00;
tau = M_.params( 1 );
M_.params( 2 ) = 0.15;
kap = M_.params( 2 );
M_.params( 3 ) = 1.50;
psi1 = M_.params( 3 );
M_.params( 4 ) = 1.00;
psi2 = M_.params( 4 );
M_.params( 5 ) = 0.60;
rhoR = M_.params( 5 );
M_.params( 6 ) = 0.95;
rhog = M_.params( 6 );
M_.params( 7 ) = 0.65;
rhoz = M_.params( 7 );
M_.params( 9 ) = 4.00;
p_A = M_.params( 9 );
M_.params( 8 ) = 4.00;
r_A = M_.params( 8 );
M_.params( 10 ) = 0.50;
gam_Q = M_.params( 10 );
M_.params( 11 ) = 0.20;
stdR = M_.params( 11 );
M_.params( 12 ) = 0.80;
stdg = M_.params( 12 );
M_.params( 13 ) = 0.45;
stdz = M_.params( 13 );
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
steady;
oo_.dr.eigval = check(M_,options_,oo_);
resid;
global estim_params_
estim_params_.var_exo = [];
estim_params_.var_endo = [];
estim_params_.corrx = [];
estim_params_.corrn = [];
estim_params_.param_vals = [];
estim_params_.param_vals = [estim_params_.param_vals; 1, NaN, (-Inf), Inf, 2, 2.00, 0.50, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 2, NaN, (-Inf), Inf, 1, 0.20, 0.10, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 3, NaN, (-Inf), Inf, 2, 1.50, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 4, NaN, (-Inf), Inf, 2, 0.50, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 5, NaN, (-Inf), Inf, 1, 0.50, 0.20, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 6, NaN, (-Inf), Inf, 1, 0.80, 0.10, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 7, NaN, (-Inf), Inf, 1, 0.66, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 9, NaN, (-Inf), Inf, 3, 4.00, 0.50, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 8, NaN, (-Inf), Inf, 3, 4.00, 0.50, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 10, NaN, (-Inf), Inf, 3, 0.50, 0.50, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 11, NaN, (-Inf), Inf, 4, 0.40, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 12, NaN, (-Inf), Inf, 4, 1.00, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 13, NaN, (-Inf), Inf, 4, 0.50, 0.25, NaN, NaN, NaN ];
save('AnScho_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('AnScho_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('AnScho_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('AnScho_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('AnScho_results.mat', 'estimation_info', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
