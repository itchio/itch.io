library("RPostgreSQL")
con <- dbConnect(PostgreSQL(), user="postgres", dbname="itchio_prod")

axis_color <- rgb(0.7,0.7,0.7)
primary_color <- "#DD4A4A"


colors <- c(primary_color, "#4A90DD", "#4ADD73", "#DDB14A", "#D07FB5", "#D0DD4A")
# colors <- rainbow(8)

add_to_names <- function(parts, values) {
  part_names = names(parts)
  new_names = paste(part_names, " (", values, ")", sep="")
  names(parts) <- new_names
  parts
}

add_p_to_names <- function(parts) {
  part_names = names(parts)
  part_p = round(parts/sum(parts) * 100)
  new_names = paste(part_names, " (", part_p, "%)", sep="")
  names(parts) <- new_names
  parts
}

format_months <- function(months) {
  strftime(months, "%b %y")
}

axis_stops <- function(max, chunks, round) {
  step <- floor(max / chunks / round) * round
  stops <- unique(c(seq(0, max, step), max))

  if (do.call(`-`, as.list(rev(tail(stops, n=2)))) < step) {
    # remove second to last item
    stops = stops[-length(stops) + 1]
  }

  stops
}

money_axis <- function(money_cap, side=4) { # default to right side
  stops <- axis_stops(money_cap, 4, 1000)

  axis(side,
       col=axis_color,
       at=stops,
       las=2, # labels perpendicular
       labels=sprintf("$%s", format(floor(stops), trim=TRUE, big.mark=",", scientific=FALSE)))
}

