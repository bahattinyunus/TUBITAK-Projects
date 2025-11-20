# Simple random assignment helper in R.
#
# Usage:
#   Rscript examples/R/random_assignment.R

random_assign <- function(ids, groups) {
  ids <- sample(ids)  # shuffle
  n_groups <- length(groups)
  assigned_groups <- groups[((seq_along(ids) - 1) %% n_groups) + 1]
  data.frame(id = ids, group = assigned_groups, stringsAsFactors = FALSE)
}

main <- function() {
  cat("Basit Rastgele Atama Aracı (R)\n")
  raw_ids <- readline("Katılımcı ID'lerini virgülle ayırarak girin (örn: S1,S2,S3): ")
  ids <- trimws(unlist(strsplit(raw_ids, ",")))
  ids <- ids[ids != ""]
  if (length(ids) == 0) {
    cat("Hiç katılımcı girilmedi.\n")
    return(invisible(NULL))
  }

  raw_groups <- readline("Grupları virgülle ayırarak girin (örn: A,B): ")
  groups <- trimws(unlist(strsplit(raw_groups, ",")))
  groups <- groups[groups != ""]
  if (length(groups) < 2) {
    cat("En az iki grup girilmelidir.\n")
    return(invisible(NULL))
  }

  res <- random_assign(ids, groups)
  cat("\nAtama Sonuçları:\n")
  print(res, row.names = FALSE)
}

if (identical(environment(), globalenv())) {
  main()
}
