$('#calendar').clndr({
  template: $('#calendar-template').html(),
  weekOffset: 1,
  forceSixRows: true,
  constraints: {
    startDate: '2015-05-06',
    endDate: '2015-07-16'
  },
  clickEvents: {
    click: function(target) {
      console.log(target);
    },
    onMonthChange: function(month) {
      console.log('you just went to ' + month.format('MMMM, YYYY'));
    }
  },
  doneRendering: function() {
    console.log('this would be a fine place to attach custom event handlers.');
  }
});