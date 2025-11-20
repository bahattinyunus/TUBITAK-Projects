# Simple budget calculator in R for TUBITAK-style projects.
#
# Usage (from repo root):
#   Rscript tools/budget_calculator.R

read_item <- function() {
  cat("\nYeni kalem ekle (boş kategori ile çık):\n")
  category <- trimws(readline("Kategori (personel / seyahat / cihaz / hizmet / diğer): "))
  if (category == "") {
    return(NULL)
  }

  description <- trimws(readline("Açıklama: "))
  if (description == "") description <- "Kalem"

  unit_cost <- NA
  while (is.na(unit_cost)) {
    raw <- readline("Birim maliyet (TL): ")
    raw <- gsub(",", ".", raw, fixed = TRUE)
    unit_cost <- suppressWarnings(as.numeric(raw))
    if (is.na(unit_cost)) cat("Lütfen geçerli bir sayı girin.\n")
  }

  quantity <- NA
  while (is.na(quantity)) {
    raw <- readline("Adet / süre (sayı): ")
    quantity <- suppressWarnings(as.integer(raw))
    if (is.na(quantity)) cat("Lütfen geçerli bir tam sayı girin.\n")
  }

  data.frame(
    category = category,
    description = description,
    unit_cost = unit_cost,
    quantity = quantity,
    stringsAsFactors = FALSE
  )
}

summarize_budget <- function(df) {
  if (nrow(df) == 0) {
    cat("\nHiç kalem girilmedi.\n")
    return(invisible(NULL))
  }

  df$total <- df$unit_cost * df$quantity
  agg <- aggregate(total ~ category, data = df, sum)
  grand_total <- sum(df$total)

  cat("\n== Bütçe Özeti ==\n")
  for (i in seq_len(nrow(agg))) {
    cat(sprintf("- %s: %.2f TL\n", agg$category[i], agg$total[i]))
  }
  cat("------------------------\n")
  cat(sprintf("Toplam: %.2f TL\n", grand_total))
}

main <- function() {
  cat("TUBITAK Proje Bütçe Hesaplayıcı (R örneği)\n")
  items <- data.frame(
    category = character(),
    description = character(),
    unit_cost = numeric(),
    quantity = integer(),
    stringsAsFactors = FALSE
  )

  repeat {
    item <- read_item()
    if (is.null(item)) break
    items <- rbind(items, item)
  }

  summarize_budget(items)
}

if (identical(environment(), globalenv())) {
  main()
}
