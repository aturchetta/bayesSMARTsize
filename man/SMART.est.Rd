% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Main.R
\name{SMART.est}
\alias{SMART.est}
\title{Estimating the Strategy Mean and its Variance for a 2-Stages SMART}
\usage{
SMART.est(tr1, tr2, outcome, R, id1, id2)
}
\arguments{
\item{tr1}{vector of length \code{n} indicating the stage-1 interventions.}

\item{tr2}{vector of length \code{n} indicating the stage-2 interventions.}

\item{outcome}{vector of final outcomes.}

\item{R}{vector of responses to the stage-1 intervention
(1 for responders and 0 for non-responders).}

\item{id1}{label of the stage-1 intervention used in \code{tr1} of the strategy in question.}

\item{id2}{label of the stage-2 intervention used in \code{tr2} for non-responders of the strategy in question.}
}
\value{
A list of two values. \code{mu} is the estimated strategy mean and
\code{tau} the estimator's variance.
}
\description{
Computes the strategy mean and the estimator's variance (tau^2)
in a 2-stages SMART in the
standard design where responders to the first treatment are not re-randomized.
}
\examples{
sim.data <- SMART.continuous(n = 100, p_A = 0.5, p_B = 0.5, phi_1 = 10, phi_2 = 5, phi_3 = -15,
phi_4 = -3, phi_5 = 10, phi_6 = -3, sd_aa = 2, sd_ac = 2, sd_ad = 2,
sd_bb = 2, sd_be = 3, sd_bf = 2)

SMART.est(tr1 = sim.data$tr1, tr2 = sim.data$tr2, outcome = sim.data$outcome,
          R = sim.data$R, id1 = "A", id2 = "AC")



}
