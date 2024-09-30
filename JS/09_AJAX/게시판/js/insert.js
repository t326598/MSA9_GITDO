let request
// 게시글 등록함수
function insert(){
    request = new XMLHttpRequest()
    // 입력 정보
    let title = document.getElementById('title').value
    let writer = document.getElementById('writer').value
    let content = document.getElementById('content').value

    let data = {
        'title' : title,
        'writer': writer,
        'content': content
    }
    // 요청 설정
      let url = `http://192.168.30.119:8080/board`
      request.open("POST", url, true)

    //  헤더 설정
    request.setRequestHeader("Content-Type","application/json")

    // 상태 변경 이벤트
    request.onreadystatechange = function() {
        let response = ''
        // 요청 성공
        if(request.readyState == request.DONE && request.status == 200){
            response = request.responseText
        alert(response) // 성공: SUCCCESS, 실패 : FAIL
        location.href = 'list.html'
    }
    // 에러 발생
    if(request.readyState == request.DONE && request.status == 500){
        alert('서버 측 에러 발생')

    }
    }
    // 요청 전송
    // JSON.stringfy(data)  : 객체 -> JSON 문자열 반환
    request.send(JSON.stringify(data))
}

