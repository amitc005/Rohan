<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title></title>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script src="autocomplet/autocompleter.js"></script>
        <link rel="stylesheet"     href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

    </head>
    <body>
        <form method="post" name="frm">
            <div class="header"></div>
            <br />
            <br />
            <div class="search-container">
                <div class="ui-widget">
                    <input type="text" autofocus="" id="search" name="term" class="term"  />
                    <input type="hidden" id="action" value="autocompletaction" name="action" class="action" />
                </div>
            </div>
        </form>
    </body>
</html>