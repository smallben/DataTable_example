## Jquery DataTable example ##

## Goal ##
The project is responsible for the easiest way to archieve the simple datatable example.

## Motivation ##
I want to make a datalist on the html(client) side.

Post/Get the data from the server side via cgi file.

The Cgi file will be written by bash script (no php or others).

## File structure ##

    .
    ├── cgi-bin
    │   └── DataTable.cgi
    ├── conf.d
    │   └── DataTable.json
    ├── DataTable.html
    ├── js
    │   └── DataTable.js
    ├── README.md
    └── result
    	└── result.JPG
    

## Usage ##

Just download the project. And run it on your http server.

If you don't know how to establish the server. Please check my blogger.

There are some parameter should be modified.

- DataTable.html
	- Table content/column should be modified. According to your requirement.
	- e.g. `<th>Name</th>` => `<th>Applicant</th>` or add the new column


- js/DataTable.js
	- Modify the specific ip address to yours. 
	- e.g. `url: "http://172.16.69.97/cgi-bin/DataTable.cgi"` => `url: "http://<ipaddr.>/cgi-bin/DataTable.cgi"`  
	
	- Modify the dataSrc defined. As your json format.
	- e.g. `'applicant': json.database[i].applicant, 'applytime': json.database[i].applytime` => `'name': json.database[i].name, 'case': json.database[i].case`
	
	json format:
	`{
        "database":[
	        {
	                "name":"benny",
	                "case":"2016-11-14 06:07:58",
	        },
	        {
	                "name":"benny",
	                "case":"2016-11-14 06:08:27",
	        }
        ]
	}`

	- Modify the column defined. As your dataSrc index item name.
	- e.g. `'columns': [
                        {"data": "applicant"},
                        {"data": "applytime"}
                ],` => `'columns': [
                        {"data": "name"},
                        {"data": "case"}
                ],`


- cgi-bin/DataTable.cgi
	- Modify the json format from your sqlite data
	- e.g. `JSON_DATA_PATH="/usr/share/nginx/html/public_html/conf.d/DataTable.json"` => `JSON_DATA_PATH="/path/to/the/data/DataTable.json`

## Reference ##
1. [bootstrap4 - official website](https://v4-alpha.getbootstrap.com/)

2. [datatable - official website](https://datatables.net/)

3. [datatable - Post JSON Data from server with php](https://datatables.net/examples/server_side/post.html) 

## Detailed information ##

[MyTechBlogger - Benny Personal blogger](http://verysmallben.blogspot.tw/)
