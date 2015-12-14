/**
 * Created by Jesus Imery on 16/18/2015.
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
            hiddenDays: [ 6, 0 ],

            events: [
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-14T13:15:00',
                    end  : '2015-12-14T14:30:00',
                    backgroundColor: 'red',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-16T13:15:00',
                    end  : '2015-12-16T14:30:00',
                    backgroundColor: 'red',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S SB\nTutorial',
                    start  : '2015-12-17T13:15:00',
                    end  : '2015-12-17T14:15:00',
                    backgroundColor: 'red',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-14T17:45:00',
                    end  : '2015-12-14T18:45:00',
                    backgroundColor: 'rgba(255, 0, 0, 0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-16T17:45:00',
                    end  : '2015-12-16T18:45:00',
                    backgroundColor: 'rgba(255, 0, 0, 0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S SB\nTutorial',
                    start  : '2015-12-17T13:15:00',
                    end  : '2015-12-17T14:15:00',
                    backgroundColor: 'rgba(255, 0, 0, 0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },

                {
                    title  : 'ENCS 282 - A\nLecture',
                    start  : '2015-12-14T16:15:00',
                    end  : '2015-12-14T17:30:00',
                    backgroundColor: 'blue',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - A\nLecture',
                    start  : '2015-12-16T16:15:00',
                    end  : '2015-12-16T17:30:00',
                    backgroundColor: 'blue',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - AM\nTutorial',
                    start  : '2015-12-14T17:45:00',
                    end  : '2015-12-14T19:25:00',
                    backgroundColor: 'blue',
                    allDay : false // will make the time show
                },

                {
                    title  : 'ENCS 282 - B\nLecture',
                    start  : '2015-12-14T14:45:00',
                    end  : '2015-12-14T16:00:00',
                    backgroundColor: 'rgba(0, 0, 255,0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - B\nLecture',
                    start  : '2015-12-16T14:45:00',
                    end  : '2015-12-16T16:00:00',
                    backgroundColor: 'rgba(0, 0, 255,0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - BA\nTutorial',
                    start  : '2015-12-18T17:45:00',
                    end  : '2015-12-18T19:25:00',
                    backgroundColor: 'rgba(0, 0, 255,0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },


                {
                    title  : 'SOEN 341 - H\nLecture',
                    start  : '2015-12-16T10:15:00',
                    end  : '2015-12-16T11:30:00',
                    backgroundColor: 'green',
                    allDay : false // will make the time show
                },
                {
                    title  : 'SOEN 341 - H\nLecture',
                    start  : '2015-12-18T10:15:00',
                    end  : '2015-12-18T11:30:00',
                    backgroundColor: 'green',
                    allDay : false // will make the time show
                },
                {
                    title: 'SOEN 341 - H\nTutorial',
                    start: '2015-12-18T12:45:00',
                    end: '2015-12-18T13:45:00',
                    backgroundColor: 'green',
                    allDay: false // will make the time show
                }
                    ,
                {
                    title  : 'COMP 346 - DD\nLecture',
                    start  : '2015-12-15T17:45:00',
                    end  : '2015-12-15T20:15:00',
                    backgroundColor: 'purple',
                    allDay : false // will make the time show
                },
                {
                    title  : 'COMP 346 - DI - X\nLaboratory',
                    start  : '2015-12-17T17:45:00',
                    end  : '2015-12-17T19:35:00',
                    backgroundColor: 'purple',
                    allDay : false // will make the time show
                }
            ]

        })
        .fullCalendar('changeView','agendaWeek');
});
