let request

document.addEventListener("DOMContentLoaded", function(){
    read()
})


// 게시글 수정
function update(){
     // 글번호 (no)
     const params = new URLSearchParams(location.search)
     const no = params.get('no')
 
     // 입력정보
     let title = document.getElementById('title').value
     let writer = document.getElementById('writer').value
     let content = document.getElementById('content').value

     // JSON
     let data = {
        'no' : no,
        'title' : title,
        'writer' : writer,
        'content' : content,
     }
     
     
     let url = `http://192.168.30.119:8080/board`
     request.open("PUT", url, true)
   
     request.setRequestHeader("Content-Type", "application/json")

     request.onreadystatechange = function(){
        let response = ''
        if(request.readyState == request.DONE && request.status == 200){
            response = request.responseText
            alert('SUCCESS')
            location.href = 'list.html'
        }
        
            if(request.readyState == request.DONE && request.status == 500){
                alert('서버측 에러 발생')
            }
     }
     request.send(JSON.stringify(data))


}


// 게시글 삭제
function remove(){
      // 글번호 (no)
      const params = new URLSearchParams(location.search)
      const no = params.get('no')
  
      const check = confirm('정말로 삭제하시겠습니까?')
      if(!check) return
      
      let url = `http://192.168.30.119:8080/board/${no}`
      request.open("DELETE", url, true)

      request.onreadystatechange = function(){
      let response = ''
      if(request.readyState == request.DONE && request.status == 200){
          response = request.responseText
          alert('SUCCESS')
          location.href = 'list.html'
      }
      
          if(request.readyState == request.DONE && request.status == 500){
              alert('서버측 에러 발생')
          }
   }
   request.send()

    
}


// 게시글 조회
function  read(){
    // XMLHttpRequest 객체 생성
    request = new XMLHttpRequest()

    // 글번호 (no)
    const params = new URLSearchParams(location.search)
    const no = params.get('no')

    // 요청 설정
    let url = `http://192.168.30.119:8080/board/${no}`
    // request.open("요청메소드(GET, PUT, DELETE)", url, 비동기여부)
    request.open("GET", url, true)

    // 상태 변화 이벤트(응답 확인)
    request.onreadystatechange = function(){
        let response = ''
        // 요청 완료 및 응답 성공
        if(request.readyState == request.DONE && request.status == 200){
            response = request.responseText //응답 데이터     

            // {no : 1, title: '...', ...}
            if(response == ''){
                alert('응답된 데이터가 없습니다.')
            }
            else{
                let board = JSON.parse(response)
              
                // JSON.parse : text > JSON 형식으로 변환

                let title = document.getElementById('title')
                let writer = document.getElementById('writer')
                let content = document.getElementById('content')

                title.value = board.title
                writer.value = board.writer
                content.value = board.content

                
        
       
                
            }
        }

    }
    // 상태변화 이벤트 끝
    // 요청 전송
    request.send()


}