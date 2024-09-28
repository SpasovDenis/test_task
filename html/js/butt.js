var count = 0;
document.getElementById("Button").onclick = function () {
        count++;
    	if (count % 2 == 0) { //проверка на четность
		    document.getElementById("demo").innerHTML = "";
        } else {
            var img = document.createElement("img");
            img.src ="https://kartinki.pics/uploads/posts/2021-07/1625682947_50-kartinkin-com-p-khakerskie-oboi-krasivie-61.jpg";
            document.getElementById("demo").appendChild(img);
	    }
}
