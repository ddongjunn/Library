<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="./fcalLib/main.css" rel="stylesheet">
<script type="text/javascript" src="./fcalLib/main.js"></script>

<style type="text/css">
#calendar{
	max-width : 800px;
	margin : 0 auto;
}
</style>
</head>
<body>

<div id="calendar"> </div>

	<script type="text/javascript">

   document.addEventListener("DOMContentLoaded", function(){
      
      let calendarEl = document.getElementById("calendar");
      
      let calendar = new FullCalendar.Calendar(calendarEl, { // 캘린더 내용이 들어가는 곳
         
         headerToolbar: {
            left: "prev next today",
            center: "title",
            right: "dayGridMonth timeGridWeek timeGridDay listMonth"
         },
         
         initialDate: new Date(),   // 초기 날짜 설정 : new Date()로 입력시 오늘 날짜로 설정
                              // 여기서의 new Date()는 java.util이 아닌 javascript의 함수
                              // 특정 날짜로 설정할 경우 포맷 : '2021-08-21' 
         
         locale: 'ko', // 한글설정
         navLinks: true,
         businessHours: true,
         events: [
        	 {
        		 id : 12,	//구분하기 위한 번호, seq개념이라고 보면 된다.
        		 title : '비즈니스 점심약속',
        		 start : '2021-07-16 12:30:00', //날짜를 하나만 넣으면
        		 constraint : "김사장님"
        	 },
        	 {
        		 id : 13,
        		 title : '카카오면접',
        		 start : '2021-07-29T15:45:00',
        		 // start : new Date(), 는 가능하다 오늘날짜로 추가
        		 // start : new Date(2021, 7, 29, 15, 45 , 00) 사용불가!
        		 constraint : "카카오인사부",
        		 color: "#ff0000"
        	 },
        	 {
        		 title : '워크샵',
        		 start : '2021-07-26 10:00:00',
        		 end : '2021-07-28 12:00:00',
        		 constraint: '사내 운동회'
        	 },
        	 {
        		 title : '데이트',
        		 start : '2021-07-30 18:00:00',
        		 constraint: '영화관람',
        		 display : 'background-color',
        		 color : '#0000ff'
        	 }
         ]         
      });

		calendar.render(); // 위에서 생성한 let calendar를 의미, render 하지 않으면 달력이 생성되지 않음

			//날짜클릭
			calendar.on("dateClick", function(info) { //info json데이터로 넘어온다.

				alert(info.dateStr); //날짜가 나온다. 클릭한 날짜를 통해서 이동을 할 수도있다.
			});
			
			//일정클릭
			calendar.on("eventClick", function(info) {
				//alert(JSON.stringify(info))
				//alert(info.event.title);
				//alert(info.event.start);
			});
			
			calendar.addEvent({
				title : '추가이벤트',
				start : '2021-07-11 12:20:00',
				constraint: '내용없음'
			});
		});
   

	</script>

</body>
</html>