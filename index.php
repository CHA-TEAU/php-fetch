<?php
include "dbconnect.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="apitest.css">
</head>

<body>
    <input type="text" name="Name" class="name" placeholder="Name">
    <input type="text" name="Subname" class="subname" placeholder="Subname">
    <input type="text" name="Price" class="price" placeholder="Price">

    <button id="btn">Click</button>

    <div id="goods__table">

    </div>

    <script>

        let btn = document.getElementById('btn');

        btn.addEventListener("click", () => {
            let new_good = document.getElementById('goods__table');

            let name = document.querySelector('.name').value;
            let sname = document.querySelector('.subname').value;
            let price = document.querySelector('.price').value;
            let json = JSON.stringify({
                "action": "add",
                "payload": {
                    "Name": name,
                    "Subname": sname,
                    "Price": price
                }

            });

            console.log(json);

            fetch("http://localhost/apishop.php", {
                method: "POST",
                body: json,
            })

                .then(response => response.json())
                .then(data => {

                    if (typeof data === 'object' && data.hasOwnProperty('status')) {
                        if (data.status === 'ok') {

                            new_good.innerHTML += `<div class="card" style="width: 18rem;">
                            <img src="/250x200.png" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">${sname}</h5>
                                        <p class="card-text">${name}</p>
                                        <p class="card-text">${price} $</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                            </div>`

                        }
                    }



                })
                .catch(error => {
                    console.log(error);
                })


        });



    </script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>