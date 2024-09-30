// 문서 준비 이벤트
document.addEventListener("DOMContentLoaded", (event)=>{
    // alert('시작!')

    // 이미지 3장
    const slides =  document.querySelectorAll('.slide img')
    
    let index = 0

    function slide(){
        // 다음 순서 저장
        index = (index+1) % 3
     
        for (let i = 0; i < slides.length; i++) {
            const slide = slides[i];
            slide.style.transform = `translateX(calc(1200px * -${index})`
            
        }
    }

    setInterval(slide, 3000)

})
    
    