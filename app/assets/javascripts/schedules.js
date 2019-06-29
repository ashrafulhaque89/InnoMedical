jQuery(function() {
  var sched;
  sched = $('#doctor_schedule_id').html();
  console.log(schedule);
  return $('#doctor_schedule_id').change(function() {
    var doc, options;
    doc = $('#doctor_schedule_id :selected').text();
    options = $(sched).filter("optgroup[label=" + doctor + "]").html();
    console.log(options);
    if (options) {
      return $('#doctor_schedule_id').html(options);
    } else {
      return $('#doctor_schedule_id').empty();
    }
  });
});