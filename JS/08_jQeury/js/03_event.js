$(function(){
    // 이벤트 처리 메소드
    //  - on('이벤트 타입' , 콜백함수{})
    // * 이벤트 타입 : click, keyup, change, ....
    /* 
        콜백함수
        - function()    : $(this) 사용가능
        - () => {}      : $(this) 사용불가
    */
   $('#item1').on('click', function(){
    $('#item1').css('color', 'red')
   })
//     this : 현재 속한 블록의 객체
//            현재 선택한 요소를 가리키는 키워드
   $('#item2').on('click', function(){
    $(this).css('color', 'hotpink')

   })
   $('#item3').on('mouseover', function(){
    $(this).css('color', 'hotpink')
    $(this).css('background-color', 'black')

   })
   $('#item3').on('mouseout', function(){
    $(this).css('color', 'hotpink')
    $(this).css('background-color', 'royalblue')

   })

   $('#item4')
      .on('mouseover', function(){
    $(this).css('color', 'hotpink')
    $(this).css('background-color', 'black')
   })
     .on('mouseout', function(){
    $(this).css('color', 'hotpink')
    $(this).css('background-color', 'red')

   })

   $('#item5')
      .on('mouseover', function(){
    $(this).css('color', 'hotpink')
    $(this).css('background-color', 'black')
   })
     .on('mouseout', function(){
    $(this).css('color', 'hotpink')
    $(this).css('background-color', 'red')

   })
    .on('click', function(){
        $(this).css('color', 'springgreen')
    })
    
    .on('dblclick', function(){
        $(this).css({
            border  : '10px solid hotpink',
            backgroundColor : 'black',
            color           : 'yellow'

        })
    })






})