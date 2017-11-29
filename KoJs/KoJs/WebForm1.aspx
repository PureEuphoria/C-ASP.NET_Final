<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KoJs.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KoJS Application</title>
</head>
<body>
    <h1>Add as many cars as you can think of by typing in the text box below and pressing the submut button.</h1>
    <h1>Here, Ill give you a free one</h1>
    <h3 data-bind="text: car">Toyota 4runner</h3>
    <input type="text" data-bind="value: car, valueUpdate: 'afterkeydown'" />
    <input type="submit" data-bind="click: addCar" />
    <ul data-bind="foreach: array">
        <li data-bind="text: $data"></li>
    </ul>

    <script src="Scripts/knockout-3.4.2.js"></script>
    <script>
        var vm = {
            car: ko.observable(),
            array: ko.observableArray(),
            addCar: function () {
                this.array.push(this.car());
            }
        };
        vm.array.push('Toyota 4Runner');
        vm.car("Toyota 4Runner");
        ko.applyBindings(vm);
    </script>
</body>
</html>
