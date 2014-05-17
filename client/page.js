chartdata = '';

Template.page.helpers({
  message: function() {
    return '';
  },

  data: function() {
    year_start = 2008;

    output = new Array();

    db.tracks.find({}).forEach(function(count) {
      output.push({ year: year_start++, value: count.count });
    });

    if (chartdata != '') {
      chartdata.setData(output);
    }

    return output;
  }
});

Template.page.rendered = function() {
  chartdata = new Morris.Line({
    // ID of the element in which to draw the chart.
    element: 'myfirstchart',
    // Chart data records -- each entry in this array corresponds to a point on
    // the chart.
    data: this.data,
    // The name of the data record attribute that contains x-values.
    xkey: 'year',
    // A list of names of data record attributes that contain y-values.
    ykeys: ['value'],
    // Labels for the ykeys -- will be displayed when you hover over the
    // chart.
    labels: ['Value']
  });
}