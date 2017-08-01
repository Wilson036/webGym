<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href='css/fullcalendar.min.css' rel='stylesheet' />
<link href='css/jquery.qtip.min.css' rel='stylesheet' />
<link href="css/bootstrap.min.css" rel="stylesheet" />
<script src='js/jquery.min.js'></script>
<script src='js/jquery.qtip.min.js'></script>
<script src='js/moment.min.js'></script>
<script src='js/fullcalendar.min.js'></script>
<script src="js/bootstrap.min.js"></script>

<script>
	$(document).ready(
			function() {
				var coursename = ""
				var coursedate = ""
				var eventObj = {}

				//////////////////////////////////////////////////////

				$('#calendar').fullCalendar(
						{
							header : {
								left : 'prev,next today',
								center : 'title',
								right : 'month,basicWeek,basicDay'
							},
							defaultDate : '2017-05-12',
							selectable : true,
							unselectAuto : true,
							navLinks : true, // can click day/week names to navigate views
							editable : true,
							eventLimit : true, // allow "more" link when too many events
							events : [ {
								title : 'All Day Event',
								start : '2017-05-02',
								backgroundColor : 'green'
							}, {
								title : 'Dinner',
								start : '2017-05-12T20:00:00'
							}, {
								title : 'Birthday Party',
								start : '2017-05-13T07:00:00'
							}, {
								title : 'Click for Google',
								url : 'http://google.com/',
								start : '2017-05-28'
							} ],
							eventDrop : function(event, delta, revertFunc,
									jsEvent, ui, view) {

							},
							dayClick : function(date, jsEvent, view) {
								var day = date.format();
								var name = window.prompt('請輸入課程名稱', '有氧課程');

								$('#calendar').fullCalendar('renderEvent', {
									title : name,
									start : day
								}, true);
							},
							eventResizeStart : function(event, jsEvent, ui,
									view) {
								console.log("resize start");
							},

							select : function(start, end, jsEvent) {

								console
										.log(start.format() + ","
												+ end.format());

								var show = document.getElementById('show')
								show.innerHTML = "<h2>" + start.format()
										+ "  到  " + end.format() + "</h2>";
							},

							eventClick : function(event, jsEvent, view) {

								$('#calendar').fullCalendar('updateEvent',
										event);
								$('#modalTitle').html(event.title);
								$('#fullCalModal').modal();
								// $('#modalBody').html(event.description);
								// $('#eventUrl').attr('href', event.url);

								eventObj = event;
								console.log(event)

							},

						// eventMouseover: function(date, jsEvent) {
						//     $(this).css('background-color', 'green');
						// },

						// eventMouseout: function(date, jsEvent) {
						//     console.log("eventMouseout")
						//     $(this).css('background-color', '#2b5797');
						// }
						});

				// 列出所有events
				document.getElementById("butinnerText").onclick = innerHTML;

				function innerHTML() {
					var events = $('#calendar').fullCalendar('clientEvents');
					var str = ""
					console.log(events)
					$.each(events, function(index, value) {
						str = str + "title:" + value.title + " , Date:"
								+ value.start._i + "</br>";
					});
					console.log(str)
					document.getElementById("h").innerHTML = str;
				}

				// 讀取 modal form data        
				var submit = document.getElementById("submit")
				submit.onclick = sub

				function sub() {

					eventObj.title = $("#course").val() ? ($("#course").val())
							: (eventObj.title)
					eventObj.start = $("#date").val()

					//date = ("#date").val()

					$('#calendar').fullCalendar('updateEvent', eventObj);
				}
			});
</script>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<div id="fullCalModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span> <span class="sr-only">close</span>
					</button>
					<h4 id="modalTitle" class="modal-title">請輸入新的課程名稱或日期</h4>
				</div>
				<div id="modalBody" class="modal-body">
					<form>
						新的課程名稱<input type="text" name="coursename" id="course"><br>
						新的課程日期<input type="text" name="coursedate" id="date"><br>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary" data-dismiss="modal"
							id="submit">Submit</button>
					</form>
				</div>
				<div class="modal-footer">
					<form></form>
				</div>
			</div>
		</div>
	</div>
	<div>
		<!-- 列出所有events -->
		<h3>目前課程有:</h3>
		<h3 id="h"></h3>
		<input type="button" id="butinnerText" value="show all events" />

		<!-- 讀取form data -->
		<div id='result'></div>
	</div>
	<div id='calendar'></div>

</body>
</html>