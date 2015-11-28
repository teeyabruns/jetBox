
function setMovieImage(id) {
    var url;

    if (id === '1') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '2') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '3') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '4') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '5') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '6') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '7') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
    if (id === '8') {
        url = "https://image.tmdb.org/t/p/w185/1n9D32o30XOHMdMWuIT4AaA5ruI.jpg";
    }
}

function getMovieImage(){
    var line = '';
    line += '<img src= ' + url + '/>';
    line += '<p> TEST </p>';

    document.getElementById('loadImage').innerHTML = line;
}

