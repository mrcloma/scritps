#!/bin/bash


# the format of input file is:
# key:value
# you can adapt to the table have more values adding the variables and using the ":" delimiter



input="./teste.txt"

echo '<html>
        <head>
                <meta charset="UTF-8">
                    <title>Relatório</title>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        </head>
        <body>
                <h2 style="margin-left:200px">Empresa</h2><br><br><br>
                <table class="table" style="width:1200px;margin-left:200px">
                <tr style="background-color:#ADD8E6">
                <th scope="col">DATA</th>
                <th scope="col">STATUS</th>
                </tr>'          

while IFS= read -r line
do
  x=$(echo "$line" | cut -d: -f1);y=$(echo "$line" | cut -d: -f2)
  echo "                <tr>"
  echo "                <th scope="row">""$x""</th>"
  echo "                <th scope="row">""$y""</th>"
  echo "                </tr>"
done < "$input"

echo "  </table>
        </body>
</html>"
