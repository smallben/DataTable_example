$(document).ready( function() {
	$('#datacontent').DataTable({
		//call cgi to get the json format
		'ajax': {
			type: "GET",
			url: "http://172.16.69.97/cgi-bin/DataTable.cgi",
			//data is the query string. it needed to be colsure
			/*data: function(d) {
				return string;
			},
			contentType: 'text/plain',
			*/
			dataSrc: function (json) {
				var return_data = new Array();
				for (var i = 0; i < json.database.length; i++) {
					return_data.push ({
						'applicant': json.database[i].applicant,
						'applytime': json.database[i].applytime
					})
				}
				return return_data;
			}
			
		},

		//define the real data to the correspond column
		'columns': [
			{"data": "applicant"},
			{"data": "applytime"}
		],

		//reinitialise the same table.
		'destroy': true
	});
});
