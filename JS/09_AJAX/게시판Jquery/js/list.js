
document.addEventListener("DOMContentLoaded", function(){
    //게시글 목록요청
    list()
})

// 게시글 목록 조회
function  list(){
    // XMLHttpRequest 객체 생성

    // 요청 설정
    let url = `http://192.168.30.119:8080/board`
    
    $.ajax({
        Type : "GET",                               //요청 메소드
        url: url,                                   // 요청 URL
        contentType : "application/json",           // 요청 데이터 타입
        dataType : "html",                          // 응답 데이터 타입
        success: function(response, status){
            let boardList = JSON.parse(response)
            // [{no : 1, title: '...', ...}, {no: 2, title: '....'}..]
            if(boardList.length == 0){
                alert('응답된 데이터가 없습니다.')
            }
            else{
                console.log(boardList);
                let $boardList = $('#board-list')
                // 날짜 포맷 지정
                
                for (const board of boardList) {
                    // let date = board.regDate.substring(0,10)
                    let date = new Date(board.regDate)
                    let year = date.getFullYear()
                    let month = date.getMonth() +1
                    let day = date.getDate()
                    let h = date.getHours()
                    let m = date.getMinutes()
                    let s = date.getSeconds()
                    date = `${year}-${month}-${day} ${h}:${m}:${s}`
                    let tr = `  <tr>
                <td>${board.no}</td>
                <td>
                <a href="read.html?no=${board.no}">${board.title}</a></td>
                <td> <a href="read.html?no=${board.no}">${board.writer}</a></td>
                <td>${date}</td>
            </tr>  `
                    // $boardList.innerHTML += 
                    $boardList.append(tr)
                    
                }
            }

        },
        error:function(xhr, status, error){
            console.log('상태:', status);
            console.log('에러:', error);
            
        }

    })
}
