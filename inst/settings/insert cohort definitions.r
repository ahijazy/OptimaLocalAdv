library(ROhdsiWebApi)

baseUrl <-"https://pioneer.hzdr.de/WebAPI"

token <- 'Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhaGlqYXp5QGVpc2JtLm9yZyIsIlNlc3Npb24tSUQiOm51bGwsImV4cCI6MTcwNTYxMzcxOH0.a_llkEOY5FiRPdgQq21V0PcpL_wgQf9rLgd0J480EFT-YcJAWcBLlKfgcDH3xeRI0aenY3t39NA2Go-X-mlM5Q'
setAuthHeader(baseUrl = baseUrl, token)

# after inserting the cohorts
 
# Insert cohort definitions from ATLAS into package -----------------------
ROhdsiWebApi::insertCohortDefinitionSetInPackage(fileName = "inst/settings/CohortsToCreate.csv",
baseUrl = baseUrl ,
insertTableSql = TRUE,
insertCohortCreationR = TRUE,
generateStats = FALSE,
packageName = "PioneerRWEvsRT")