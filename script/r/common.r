library("RPostgreSQL")
con <- dbConnect(PostgreSQL(), user="postgres", dbname="itchio_prod")

axis_color <- rgb(0.7,0.7,0.7)
primary_color <- "#DD4A4A"

default_width <- 1000
default_height <- 600
default_height_half <- 400

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

axis_stops <- function(max, chunks, nearest=FALSE, log_scale=FALSE, min=0) {
  if (log_scale) {
    max <- log10(max)
  }

  step <- max / chunks
  stops <- seq(0, max, step)

  if (log_scale) {
    stops <- 10^stops
    max <- 10^max
    step <- 10^max
  }

  if (nearest) {
    stops <- floor(stops / nearest) * nearest
  }

  stops <- unique(c(min, stops, max))

  if (do.call(`-`, as.list(rev(tail(stops, n=2)))) < step) {
    # remove second to last item
    stops = stops[-length(stops) + 1]
  }

  stops
}

# 4: right side
money_axis <- function(money_cap, side=4, ticks=4, nearest=1000, log_scale=FALSE, min=0, cex=1) {
  stops <- axis_stops(money_cap, ticks, nearest, log_scale, min)
  stops <- round(stops)

  if (log_scale) {
    stops <- c(min, stops)
  }

  stops <- unique(stops)

  axis(side,
       col=axis_color,
       at=stops,
       cex.axis=cex,
       las=2, # labels perpendicular
       labels=sprintf("$%s", format(stops,
                                    trim=TRUE,
                                    big.mark=",",
                                    scientific=FALSE)))
}


months_axis <- function(months) {
  month_ids=unique(c(seq(1, length(months), 3), length(months)))

  axis(1,
       col=axis_color,
       at=month_ids,
       labels=format_months(months[month_ids]))
}

money_graph <- function(title, sums, months, filename="out.png", width=default_width, height=default_height, nearest=1000) {
  png(file=filename, width=width, height=height, res=120)

  # bottom, left, top, right
  op <- par(mar=c(2.5, 2, 2, 6), lwd=2)

  plot(sums,
       type="b", # dots and lines
       col=primary_color,
       ann=FALSE, # no labels or title, added below
       axes=FALSE)

  months_axis(months)
  money_axis(max(sums), nearest=nearest)

  title(main=title)
  par(op)
}

max_date <- as.Date("2014-9-1")
truncate_dates <- function(frame, key="date") {
  frame[frame[, key] < max_date,]
}


