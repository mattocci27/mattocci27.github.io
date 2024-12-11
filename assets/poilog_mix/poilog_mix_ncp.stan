data{
 int<lower=0> N;
 int y[N];
}

parameters {
  ordered[2] mu;
  real<lower=0> sigma[2];
  real<lower=0, upper=1> theta;
  vector[N] log_lambda_tilde[2];
}
transformed parameters {
  vector[N] log_lambda[2];
  for (i in 1:2)
    log_lambda[i,] = mu[i] + log_lambda_tilde[i,] * sigma[i];
}

model {
 sigma ~ cauchy(0, 2.5);
 mu ~ normal(0, 10);
 theta ~ beta(2, 2);
 for (i in 1:2)
   log_lambda_tilde[i, ] ~ normal(0, 1);

 for (n in 1:N)
  target += log_mix(theta,
                    poisson_log_lpmf(y[n] | log_lambda[1, n]),
                    poisson_log_lpmf(y[n] | log_lambda[2, n]));
}
