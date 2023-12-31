% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{reshape_covariate_dfs}
\alias{reshape_covariate_dfs}
\title{Function used to transform covariates coming from two dataframes one for spatial and
one for temporal into a single dataframe with the right shape for the BKTR Regressor.
This is useful when the temporal covariates do not vary trough space and the spatial
covariates do not vary trough time (Like in the BIXI example). The function also adds
a column for the target variable at the beginning of the dataframe.}
\usage{
reshape_covariate_dfs(spatial_df, temporal_df, y_df, y_column_name = "y")
}
\arguments{
\item{spatial_df}{data.table: Spatial covariates dataframe with an index named
location and a shape of (n_locations, n_spatial_covariates)}

\item{temporal_df}{data.table: Temporal covariates dataframe with an index named
time and a shape of (n_times, n_temporal_covariates)}

\item{y_df}{data.table: The dataframe containing the target variable. It should have
a shape of (n_locations, n_times). The columns and index names of this dataframe
should be correspond to the one of the spatial_df and temporal_df.}

\item{y_column_name}{string: The name of the target variable column in y_df. Default
to 'y'.}
}
\value{
data.table: The reshaped covariates dataframe with a shape of
      (n_locations * n_times, 1 + n_spatial_covariates + n_temporal_covariates).
      The first two columns are the indexes (location, time), the following column
      is the target variable and the other columns are the covariates.
}
\description{
Function used to transform covariates coming from two dataframes one for spatial and
one for temporal into a single dataframe with the right shape for the BKTR Regressor.
This is useful when the temporal covariates do not vary trough space and the spatial
covariates do not vary trough time (Like in the BIXI example). The function also adds
a column for the target variable at the beginning of the dataframe.
}
\examples{
\dontshow{if (torch::torch_is_installed()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
# Let's reshape the BIXI dataframes without normalization
new_data_df <- reshape_covariate_dfs(
  spatial_df = BKTR::bixi_spatial_features,
  temporal_df = BKTR::bixi_temporal_features,
  y_df = BKTR::bixi_station_departures,
  y_column_name = 'whole_nb_departure')
# The resulting dataframe has the right shape to be a BKTRRegressor data_df
head(new_data_df)
\dontshow{\}) # examplesIf}
}
