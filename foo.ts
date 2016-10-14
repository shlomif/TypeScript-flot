/// <reference path="typings/index.d.ts" />
/// <reference path="jquery.flot.d.ts" />

$(function() {
	var series = [[],[]];
	var lines = $("#data").text().split("\n");
	lines.shift();
	lines.forEach(
		function (l) {
			var fields = l.split("\t");
			var x:number = fields[0] + 0;
			var y1:number = fields[1] + 0;
			var y2:number = fields[3] + 0;
			series[0].push([x,y1]);
			series[1].push([x,y2]);
		}
	);
	$.plot("#placeholder", series);
	$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
});
