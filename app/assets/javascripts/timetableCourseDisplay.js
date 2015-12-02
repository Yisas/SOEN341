/**
 * Created by Jesus Imery on 16/11/2015.
 * This one is just for display
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
            hiddenDays: [ 6, 0 ]

        })
        .fullCalendar('changeView','agendaWeek');
});
