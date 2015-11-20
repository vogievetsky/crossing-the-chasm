
  var data = d3.nest()
    .key(function(d) { return d.State; })
    .key(function(d) { return d.DayOfWeek; })
    .rollup(function(values) { return values.length; })
    .entries(flatData);



var stateByDayOfWeek = $('wiki')
  .filter('$region != null and $country == "United States"')
  .split('$region', 'State')
    .apply('Edits', '$wiki.count()')
    .sort('$Edits', 'descending')
    .limit(5)
    .apply('DaysOfWeek',
      $('wiki').split($("time").timePart('DAY_OF_WEEK'), 'DayOfWeek')
        .apply('Edits', '$wiki.count()')
        .sort('$DayOfWeek', 'ascending')
    )





