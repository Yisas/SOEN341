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
            hiddenDays: [ 6, 0 ],

            events: [
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-07T13:15:00',
                    end  : '2015-12-07T14:30:00',
                    backgroundColor: 'red',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-09T13:15:00',
                    end  : '2015-12-09T14:30:00',
                    backgroundColor: 'red',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S SB\nTutorial',
                    start  : '2015-12-10T13:15:00',
                    end  : '2015-12-10T14:15:00',
                    backgroundColor: 'red',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-07T17:45:00',
                    end  : '2015-12-07T20:15:00',
                    backgroundColor: 'rgba(255, 0, 0, 0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S\nLecture',
                    start  : '2015-12-09T17:45:00',
                    end  : '2015-12-09T18:45:00',
                    backgroundColor: 'rgba(255, 0, 0, 0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENGR 371 - S SB\nTutorial',
                    start  : '2015-12-10T13:15:00',
                    end  : '2015-12-10T14:15:00',
                    backgroundColor: 'rgba(255, 0, 0, 0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },

                {
                    title  : 'ENCS 282 - A\nLecture',
                    start  : '2015-12-07T16:15:00',
                    end  : '2015-12-07T17:30:00',
                    backgroundColor: 'blue',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - A\nLecture',
                    start  : '2015-12-09T16:15:00',
                    end  : '2015-12-09T17:30:00',
                    backgroundColor: 'blue',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - AM\nTutorial',
                    start  : '2015-12-07T17:45:00',
                    end  : '2015-12-07T19:25:00',
                    backgroundColor: 'blue',
                    allDay : false // will make the time show
                },

                {
                    title  : 'ENCS 282 - B\nLecture',
                    start  : '2015-12-07T14:45:00',
                    end  : '2015-12-07T16:00:00',
                    backgroundColor: 'rgba(0, 0, 255,0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - B\nLecture',
                    start  : '2015-12-09T14:45:00',
                    end  : '2015-12-09T16:00:00',
                    backgroundColor: 'rgba(0, 0, 255,0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },
                {
                    title  : 'ENCS 282 - BA\nTutorial',
                    start  : '2015-12-11T17:45:00',
                    end  : '2015-12-11T19:25:00',
                    backgroundColor: 'rgba(0, 0, 255,0.3)',
                    textColor: 'black',
                    allDay : false // will make the time show
                },


                {
                    title  : 'SOEN 341 - H\nLecture',
                    start  : '2015-12-09T10:15:00',
                    end  : '2015-12-09T11:30:00',
                    backgroundColor: 'green',
                    allDay : false // will make the time show
                },
                {
                    title  : 'SOEN 341 - H\nLecture',
                    start  : '2015-12-11T10:15:00',
                    end  : '2015-12-11T11:30:00',
                    backgroundColor: 'green',
                    allDay : false // will make the time show
                },
                {
                    title: 'SOEN 341 - H\nTutorial',
                    start: '2015-12-11T12:45:00',
                    end: '2015-12-11T13:45:00',
                    backgroundColor: 'green',
                    allDay: false // will make the time show
                }
                    ,
                {
                    title  : 'COMP 346 - DD\nLecture',
                    start  : '2015-12-08T17:45:00',
                    end  : '2015-12-08T20:15:00',
                    backgroundColor: 'purple',
                    allDay : false // will make the time show
                },
                {
                    title  : 'COMP 346 - DI - X\nLaboratory',
                    start  : '2015-12-10T17:45:00',
                    end  : '2015-12-10T19:35:00',
                    backgroundColor: 'purple',
                    allDay : false // will make the time show
                }
            ]

        })
        .fullCalendar('changeView','agendaWeek');
});
