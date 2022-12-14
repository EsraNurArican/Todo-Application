<%@ page contentType="text/html" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha256-98vAGjEDGN79TjHkYWVD4s87rvWkdWLHPs5MC3FvFX4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.min.js"
    integrity="sha256-xaF9RpdtRxzwYMWg4ldJoyPWqyDPCRD0Cv7YEEe6Ie8=" crossorigin="anonymous"></script>
  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment-with-locales.min.js"></script>
  <script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/moment-timezone/0.5.21/moment-timezone-with-data-2012-2022.min.js"></script>
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="icon" href="/images/icon.png" type="image/png">
  <link rel="stylesheet" href="/css/dashboard.css">
  <link rel="stylesheet" href="/css/alert.css">
  <link rel="stylesheet" href="/css/datetime-picker.css">
  <script type="text/javascript" src="/js/datetime-picker.js"></script>

  <title>Welcome, ${sessionScope.user.firstName}</title>
</head>

<body>
  <!-- navbar -->
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
    <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="/todo">To Do App</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse"
      data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="navbar-nav px-3">
      <li class="nav-item text-nowrap">
        <a class="btn btn-outline-primary btn-sm" href="/profile">Profile</a>
        <a class="btn btn-outline-danger btn-sm" href="/logout">Log out</a>
      </li>
    </ul>
  </nav>
  <!-- navbar ends -->
  <div class="container-fluid">

    <div class="row">
      <%@ include file="common.jsp" %>

      <main class="col-md-9 ml-sm-auto col-lg-10 px-md-4 bg-da text-center">
        <div
          class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Add a Todo</h1>
        </div>
        <div class="text-center">
          <form style="display: inline-block;" class="form-signin" action="addTodo" method="post">
            <div class="error">${error}</div>
            <div class="warning">${warning}</div>
            <div class="success">${success}</div>
            <h1 class="h3 mb-3 font-weight-normal">Fill in the details</h1>
            <label for="inputHeading" class="sr-only">Heading</label>
            <input type="text" name="heading" id="inputEmail" class="form-control" placeholder="Enter Heading" required>
            <br />
            <label for="inputDetail" class="sr-only">Detail</label>
            <textarea class="form-control" name="detail" rows="5" cols="70" placeholder="Enter Details"></textarea>
            <br>
            <label for="inputDetail" class="sr-only">Detail</label>
            <div class="form-group">
              <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
                <input type="text" id="inputDeadline" value="${dateFormatter.format(todo.deadLine)}" name="date"
                  class="form-control datetimepicker-input" data-target="#datetimepicker1" placeholder="Finish Before"
                  required="required" />
                <div class="input-group-append" data-target="#datetimepicker1" data-toggle="datetimepicker">
                  <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                </div>
              </div>
            </div>
            <script type="text/javascript">
              $(function () {
                $('#datetimepicker1').datetimepicker({
                  format: 'DD/MM/YYYY hh:mm A'
                });
              });
            </script>
            <br>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Add Todo</button>

          </form>

        </div>
      </main>
    </div>
  </div>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->


</body>

</html>