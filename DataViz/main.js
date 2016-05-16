var margin = {top: 19, right: 20, bottom: 40, left: 19},
    width = 850,// - margin.left, // width
    height = 156 + margin.top,// - margin.bottom, // height
    cellSize = 17; // cell size

var percent = d3.format(".1%"),
    format = d3.time.format("%Y%m%d");

var datatitle = ["HeartRate","TempDiff","Wind","Steps","Migraine"];

var colors = [];
colors[0] = d3.scale.quantize().range(d3.range(10).map(function(d) { return "q" + d + "-11"; })).domain([50, 150]);//HR
colors[1] = d3.scale.quantize().range(d3.range(10).map(function(d) { return "q" + d + "-11"; })).domain([0, 30]);//TMax
colors[2] = d3.scale.quantize().range(d3.range(10).map(function(d) { return "q" + d + "-11"; })).domain([0, 11]);//Wind
colors[3] = d3.scale.quantize().range(d3.range(10).map(function(d) { return "q" + d + "-11"; })).domain([2000, 20000]);//Steps  
colors[4] = d3.scale.quantize().range(d3.range(10).map(function(d) { return "q" + d + "-11"; })).domain([0, 5]); //Migraine

var svg = d3.select("body").selectAll("svg")
    //.data(d3.range(2015, 2016))
    .data(datatitle)
  .enter().append("svg")
    .attr("width", width)
    .attr("height", height)
    .attr("class", "RdYlGn")
  .append("g")
    .attr("transform", "translate(" + ((width - cellSize * 48) / 2 + 10) + "," + (height - cellSize * 7 - 1 - margin.top) + ")");

svg.append("text")
    .attr("transform", "translate(-6," + cellSize * 3.5 + ")rotate(-90)")
    .style("text-anchor", "middle")
    .attr('class', 'header')
    .text(function(d) { return d; });

var rect = svg.selectAll(".day")
    //.data(function(d) { return d3.time.days(new Date(d, 0, 1), new Date(d + 1, 0, 1)); })
    .data(function() { return d3.time.days(new Date(2015, 5, 29), new Date(2016, 3, 19)); })
  .enter().append("rect")
    .attr("class", "day")
    .attr("width", cellSize)
    .attr("height", cellSize)
    .attr("x", function(d) { 
      if (d < new Date(2016, 0, 1))
        return (d3.time.weekOfYear(d)+1-d3.time.weekOfYear(new Date(2015, 5, 29))) * cellSize; 
      else
        return (d3.time.weekOfYear(d)+27) * cellSize; })
    .attr("y", function(d) { return d.getDay() * cellSize; })
    .datum(format);


rect.append("title")
    .text(function(d) { return d; });

svg.selectAll(".month")
    .data(function() { return d3.time.months(new Date(2015, 5, 29), new Date(2016, 3, 19)); })
  .enter().append("path")
    .attr("class", "month")
    .attr("d", monthPath);

var month_name = d3.time.format("%B")

svg.selectAll("text.month-name")
    .data(function(d) { return d3.time.months(new Date(2015, 5, 29), new Date(2016, 3, 19)); })
  .enter().append("text")
    .attr("class", "month-name")
    .attr("x", function(d) { 
      if (d < new Date(2016, 0, 1))
        return (d3.time.weekOfYear(d)+2-d3.time.weekOfYear(new Date(2015, 5, 29))) * cellSize; 
      else
        return (d3.time.weekOfYear(d)+29) * cellSize; })
    .attr('y', '-10')
    .text(month_name);

d3.csv("HealthData.csv", function(error, csv) {
  if (error) throw error;
  var data = d3.nest()
    .key(function(d) { return d.DATE; })
    .rollup(function(d){
      var obj = {};
      obj['HeartRate'] = d[0]['HR'];
      obj['TempDiff'] = Number(d[0]['TMAX']) - Number(d[0]['TMIN'])
      obj['Wind'] = d[0]['Wind']
      obj['Steps'] = d[0]['Steps']
      obj['Migraine'] = d[0]['Migraine']
      return obj
    })
    .map(csv);
  //console.log(data);
  ["HeartRate","TempDiff","Wind","Steps","Migraine"].forEach(function (e, i) { 
    svg.filter(function(d) { return d === e })
      .selectAll('.day')
        .filter(function(d) { return d in data; })
        .attr("class", function(d) { return "day " + colors[i](data[d][e]); })
      .select("title")
        .text(function(d) { return d + ": " + data[d][e]; });
  });
});

function monthPath(t0) {
  if (t0 < new Date(2016, 0, 1))
    var t1 = new Date(t0.getFullYear(), t0.getMonth() + 1, 0),
        d0 = t0.getDay(), w0 = d3.time.weekOfYear(t0)-25,
        d1 = t1.getDay(), w1 = d3.time.weekOfYear(t1)-25;
  else 
    var t1 = new Date(t0.getFullYear(), t0.getMonth() + 1, 0),
          d0 = t0.getDay(), w0 = d3.time.weekOfYear(t0)+27,
          d1 = t1.getDay(), w1 = d3.time.weekOfYear(t1)+27;

  return "M" + (w0 + 1) * cellSize + "," + d0 * cellSize
      + "H" + w0 * cellSize + "V" + 7 * cellSize
      + "H" + w1 * cellSize + "V" + (d1 + 1) * cellSize
      + "H" + (w1 + 1) * cellSize + "V" + 0
      + "H" + (w0 + 1) * cellSize + "Z";
}