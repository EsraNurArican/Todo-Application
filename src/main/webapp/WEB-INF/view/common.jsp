<%--
  Created by IntelliJ IDEA.
  User: esra
  Date: 9/1/2022
  Time: 6:08 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<nav id="sidebarMenu" class="col-md-2 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link" href="/todo/add">
                    <span data-feather="shopping-cart"></span>
                    Add a Task
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/todo/upcoming">
                    <span data-feather="home"></span>
                    Upcoming Task(s)
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/todo/completed">
                    <span data-feather="file"></span>
                    Completed Task(s)
                </a>
            <li class="nav-item">
                <a class="nav-link" href="/todo/missed">
                    <span data-feather="shopping-cart"></span>
                    Missed Task(s)
                </a>
            </li>

        </ul>

    </div>
</nav>
</body>
</html>