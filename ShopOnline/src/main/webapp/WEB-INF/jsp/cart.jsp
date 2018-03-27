<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <title>Advanced frameworks 2018</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="../../resources/css/style.css">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Online Shop</h1>
    <p class="lead">Nu dati banii pe prostii, luati mobile la copii !!!</p>
</div>

<div class="container">
    <c:if test="${empty cart.items}">
        <div class="alert alert-warning text-center" role="alert">
            No products in cart :(
        </div>
    </c:if>
    <c:if test="${not empty cart.items}">
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Product</th>
                <th scope="col">Quantity</th>
                <th scope="col">Price/Unit</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${cart.items}" var="item">
                <tr>
                    <td>${item.name}</td>
                    <td>
                        <form:form modelAttribute="cartItem" action="/cart/update/${item.productId}" method="post"
                                   class="text-center">
                            <form:select path="quantity" class="custom-select custom-select-lg mb-3"
                                         onchange="this.form.submit()">
                                <option value="${item.quantity}" selected hidden>${item.quantity}</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </form:select>

                        </form:form>
                    </td>
                    <td>${item.price} RON</td>
                    <td>
                        <form:form action="/cart/${item.productId}" method="delete">
                            <button type="submit" class="btn btn-danger btn-lg">Remove</button>
                        </form:form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>

    <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
            <div class="col-12 col-md">
                <small class="d-block mb-3 text-muted">&copy;2018</small>
            </div>
            <div class="col-6 col-md">
                <h5>Products</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">All products</a></li>
                    <li><a class="text-muted" href="#">Best sellers</a></li>
                    <li><a class="text-muted" href="#">New arrivals</a></li>
                </ul>
            </div>

        </div>
    </footer>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>