function popup(){
    return Swal.fire({
        title: 'Food',
        text: 'Mau Makan Enak Tidak Menguras Kantong. Langsung Aja Cek Rekomendasi Makanannya Disini 😁👌',
        imageUrl: 'kuliner.jpg',
        imageWidth: 400,
        imageHeight: 200,
        imageAlt: 'Custom image',
      })
}

var element = document.body;

function modedark() {
    element.classList.toggle("gelap");
    if(element.classList.contains(gelap)){
        localStorage.setItem('tema','gelap');
    }else{
        localStorage.setItem('tema','terang');
    }
}

const content = document.getElementsByClassName("content");
setInterval(function() {
    content[0].style.color = "wheat";

    setTimeout(function() {
        content[0].style.color = "black";
    }, 500)
}, 1100);

const menu = document.getElementsByClassName("menu");
menu[0].addEventListener("mousemove", function(){
    menu[0].style.color = "black";
});
menu[0].addEventListener("mouseout", function(){
    menu[0].style.color = "wheat";
});

menu[1].addEventListener("mousemove", function(){
    menu[1].style.color = "black";
});
menu[1].addEventListener("mouseout", function(){
    menu[1].style.color = "wheat";
});

menu[2].addEventListener("mousemove", function(){
    menu[2].style.color = "black";
});
menu[2].addEventListener("mouseout", function(){
    menu[2].style.color = "wheat";
});

menu[3].addEventListener("mousemove", function(){
    menu[3].style.color = "black";
});
menu[3].addEventListener("mouseout", function(){
    menu[3].style.color = "wheat";
});
menu[4].addEventListener("mousemove", function(){
    menu[4].style.color = "black";
});
menu[4].addEventListener("mouseout", function(){
    menu[4].style.color = "wheat";
});