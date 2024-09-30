
document.addEventListener("DOMContentLoaded",(event) =>{
    const slides = document.querySelectorAll('.slide img')
    let index = 0

    function slide(){
        index = (index + 1) %3
    for (let i = 0; i < slides.length; i++) {
        const slide = slides[i];
        
        slide.style.opacity = 0
        
    }
    slides[index].style.opacity = 1
}
    setInterval(slide,3000)
})