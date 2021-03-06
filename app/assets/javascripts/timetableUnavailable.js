/**
 * Created by Jesus Imery on 16/11/2015.
 */

$(document).ready(function() {
    // page is now ready, initialize the calendar...


    $('#calendar').fullCalendar({
            // put your options and callbacks here

        selectable: true,
        slotEventOverlap:false,
        columnFormat:'ddd',
        allDaySlot:false,
        header:false,
        minTime: '06:00:00',
        hiddenDays: [ 6, 0 ],


            dayClick: function(date, jsEvent, view) {

                //alert('Clicked on: ' + date.format());

                //alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

                var end_date= moment();
                end_date=date.clone();
                end_date.add(30,'minutes');

                var newEvent = {
                    title: 'Unavailable',
                    start: date,
                    end: end_date,
                    editable:true,
                    overlap: false,
                    backgroundColor: 'red'
                };

                $('#calendar').fullCalendar('renderEvent', newEvent , 'stick');


            }

        })
        .fullCalendar('changeView','agendaWeek');
});