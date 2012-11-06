bullshits = [
  {
    name: 'City2Sea',
    date: '11/11/2012',
    start: '8:00am',
    finish: '12:00pm'
  },
  {
    name: 'Gatorade Triathlon',
    date: '25/11/2012',
    start: '7:00am',
    finish: '11:30am'
  },
  {
    name: 'Sussan Women\'s Fun Run',
    date: '2/12/2012',
    start: '7:30am',
    finish: '11:30am'
  },
  {
    name: 'Gatorade Triathlon',
    date: '16/12/2012',
    start: '7:00am',
    finish: '11:30am'
  },
  {
    name: 'Gatorade Triathlon',
    date: '13/1/2013',
    start: '7:00am',
    finish: '11:30am'
  },
  {
    name: 'XOSIZE Tri Series',
    date: '20/1/2013',
    start: '7:00am',
    finish: '11:30am'
  },
  {
    name: 'Pride March',
    date: '3/2/2013',
    start: '2:00pm',
    finish: '8:00pm'
  },
  {
    name: 'St Kilda Festival Tomorrow',
    date: '9/2/2013',
    start: '12:00pm',
    finish: '11:00pm'
  },
  {
    name: 'St Kilda Festival',
    date: '10/2/2013',
    start: '7:00am',
    finish: '11:00pm'
  },
  {
    name: 'Nissan Corporate Triathlon',
    date: '17/2/2013',
    start: '7:30am',
    finish: '11:30am'
  },
  {
    name: 'MS Summer Cycle',
    date: '23/2/2013',
    start: '6:00am',
    finish: '3:00pm'
  },
  {
    name: 'MS Summer Cycle',
    date: '24/2/2013',
    start: '6:00am',
    finish: '3:00pm'
  },
  {
    name: 'Weet-Bix Kids TRY-athlon',
    date: '10/3/2013',
    start: '9:00am',
    finish: '1:00pm'
  },
  {
    name: 'Gatorade Triathlon',
    date: '7/4/2013',
    start: '7:30am',
    finish: '11:30pm'
  }
]

# today = moment('10/3/2013', 'D/M/YYYY').format( 'D/M/YYYY' )
today = moment().format( 'D/M/YYYY' )
todaysBullshit = null

iterator = ( memo, bullshit ) ->
  if todaysBullshit is null
    if today == bullshit.date
      todaysBullshit = bullshit

_.reduce bullshits, iterator

if todaysBullshit
  $( '.result' ).append( 'Yes' )
                .after( "<span class='detail'>#{ todaysBullshit.name }: #{ todaysBullshit.start } - #{ todaysBullshit.finish }</span>" )
  $( 'body' ).addClass( 'yes' )
else
  $( '.result' ).append( 'No' )
  $( 'body' ).addClass( 'no' )