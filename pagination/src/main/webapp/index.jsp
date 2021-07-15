<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="./jquery/jquery.twbsPagination.min.js"></script>

</head>
<body>
<!-- https://github.com/josecebe/twbs-pagination -->

<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination"></ul>
    </nav>
</div>

<script type="text/javascript">
let totalCount = 52;	// 글의 총수
let pageSize = 10;		// 페이지의 크기 1 ~ 10
let pageNumber = 1;		// 현재 페이지

let _totalPages = totalCount / 10;
if(totalCount % 10 > 0){
	_totalPages++;
}

$("#pagination").twbsPagination({
	startPage: 1,
	totalPages: _totalPages,
	visiblePages: 10,
	first:'<span sris-hidden="true">«</span>',
	prev:"이전",
	next:"다음",
	last:'<span sris-hidden="true">»</span>',
	onPageClick:function(event, page){
		alert(page);
	}
});


</script>


</body>
</html>







