% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/class_simulation_results.R
\name{SimulationResultsEnrichmentSurvival}
\alias{SimulationResultsEnrichmentSurvival}
\title{Class for Simulation Results Enrichment Survival}
\description{
A class for simulation results survival in enrichment designs.
}
\details{
Use \code{\link[=getSimulationEnrichmentSurvival]{getSimulationEnrichmentSurvival()}} to create an object of this type.
}
\section{Fields}{

\describe{
\item{\code{maxNumberOfIterations}}{The number of simulation iterations. Is a numeric vector of length 1 containing a whole number.}

\item{\code{seed}}{The seed used for random number generation. Is a numeric vector of length 1.}

\item{\code{allocationRatioPlanned}}{The planned allocation ratio (\code{n1 / n2}) for the groups. For multi-arm designs, it is the allocation ratio relating the active arm(s) to the control. Is a positive numeric vector of length 1.}

\item{\code{conditionalPower}}{The conditional power at each stage of the trial. Is a numeric vector of length 1 containing a value between 0 and 1.}

\item{\code{iterations}}{The number of iterations used for simulations. Is a numeric vector of length 1 containing a whole number.}

\item{\code{futilityPerStage}}{The per-stage probabilities of stopping the trial for futility. Is a numeric matrix.}

\item{\code{futilityStop}}{In simulation results data set: indicates whether trial is stopped for futility or not.}

\item{\code{directionUpper}}{Specifies the direction of the alternative, only applicable for one-sided testing. Default is \code{TRUE} which means that larger values of the test statistics yield smaller p-values. Is a logical vector of length 1.}

\item{\code{plannedSubjects}}{Determines the number of cumulated (overall) subjects when the interim stages are planned. For two treatment arms, is the number of subjects for both treatment arms. For multi-arm designs, refers to the number of subjects per selected active arm. Is a numeric vector of length \code{kMax} containing whole numbers.}

\item{\code{minNumberOfSubjectsPerStage}}{Determines the minimum number of subjects per stage for data-driven sample size recalculation. For two treatment arms, is the number of subjects for both treatment arms. For multi-arm designs, is the minimum number of subjects per selected active arm. Is a numeric vector of length \code{kMax} containing whole numbers.}

\item{\code{maxNumberOfSubjectsPerStage}}{Determines the maximum number of subjects per stage for data-driven sample size recalculation. For two treatment arms, is the number of subjects for both treatment arms. For multi-arm designs, is the minimum number of subjects per selected active arm. Is a numeric vector of length \code{kMax} containing whole numbers.}

\item{\code{thetaH1}}{The assumed effect under the alternative hypothesis. For survival designs, refers to the hazard ratio. Is a numeric vector.}

\item{\code{calcEventsFunction}}{An optional function that can be entered to define how event size is recalculated. By default, recalculation is performed with conditional power with specified \code{minNumberOfEventsPerStage} and \code{maxNumberOfEventsPerStage}.}

\item{\code{expectedNumberOfEvents}}{The expected number of events under specified alternative. Is a numeric vector.}

\item{\code{populations}}{The number of populations in an enrichment design. Is a numeric vector of length 1 containing a whole number.}

\item{\code{effectList}}{The list of subsets, prevalences and effect sizes with columns and number of rows reflecting the different situations to be considered.}

\item{\code{intersectionTest}}{The multiple test used for intersection hypotheses in closed systems of hypotheses. Is a character vector of length 1.}

\item{\code{stratifiedAnalysis}}{For enrichment designs, typically a stratified analysis should be chosen. When testing means and rates, a non-stratified analysis can be performed on overall data. For survival data, only a stratified analysis is possible. Is a logical vector of length 1.}

\item{\code{adaptations}}{Indicates whether or not an adaptation takes place at interim k. Is a logical vector of length \code{kMax} minus 1.}

\item{\code{typeOfSelection}}{The way the treatment arms or populations are selected at interim. Is a character vector of length 1.}

\item{\code{effectMeasure}}{Criterion for treatment arm/population selection, either based on test statistic (\code{"testStatistic"}) or effect estimate (\code{"effectEstimate"}). Is a character vector of length 1.}

\item{\code{successCriterion}}{Defines when the study is stopped for efficacy at interim. \code{"all"} stops the trial if the efficacy criterion has been fulfilled for all selected treatment arms/populations, \code{"atLeastOne"} stops if at least one of the selected treatment arms/populations is shown to be superior to control at interim. Is a character vector of length 1.}

\item{\code{epsilonValue}}{Needs to be specified if \code{typeOfSelection = "epsilon"}. Is a numeric vector of length 1.}

\item{\code{rValue}}{Needs to be specified if \code{typeOfSelection = "rBest"}. Is a numeric vector of length 1.}

\item{\code{threshold}}{The selection criterion: treatment arm/population is only selected if \code{effectMeasure} exceeds \code{threshold}. Either a single numeric value or a numeric vector of length \code{activeArms} referring to a separate threshold condition for each treatment arm.}

\item{\code{selectPopulationsFunction}}{An optional function that can be entered to define the way of how populations are selected.}

\item{\code{correlationComputation}}{If \code{"alternative"}, a correlation matrix according to Deng et al. (Biometrics, 2019) accounting for the respective alternative is used for simulating log-rank statistics in the many-to-one design. If \code{"null"}, a constant correlation matrix valid under the null hypothesis is used.}

\item{\code{earlyStop}}{The probability to stopping the trial either for efficacy or futility. Is a numeric vector.}

\item{\code{selectedPopulations}}{The selected populations in enrichment designs.}

\item{\code{numberOfPopulations}}{The number of populations in an enrichment design. Is a numeric matrix.}

\item{\code{rejectAtLeastOne}}{The probability to reject at least one of the (multiple) hypotheses. Is a numeric vector.}

\item{\code{rejectedPopulationsPerStage}}{The simulated number of rejected populations per stage.}

\item{\code{successPerStage}}{The simulated success probabilities per stage where success is defined by user. Is a numeric matrix.}

\item{\code{eventsPerStage}}{Deprecated: use \code{singleEventsPerStage} or \code{cumulativeEventsPerStage} instead Is a numeric matrix.}

\item{\code{singleNumberOfEventsPerStage}}{Deprecated: use \code{singleEventsPerArmAndStage} or \code{singleEventsPerSubsetAndStage} instead}

\item{\code{singleEventsPerSubsetAndStage}}{The number of events per subset and stage that is used for the analysis.}

\item{\code{conditionalPowerAchieved}}{The calculated conditional power, under the assumption of observed or assumed effect sizes. Is a numeric matrix.}
}}

\keyword{internal}
