<!--- Creates a new three-column query, specifying the column data types --->
	<cfset dataQuery = QueryNew("City, State, AreaCode", "VarChar, VarChar, Integer")>

<!--- Make two rows in the query --->
	<cfset newRow = QueryAddRow(dataQuery, 5)>


<!--- Set the values of the cells in the query --->
	<cfset temp = QuerySetCell(dataQuery, "City", "dallas", 1)>
	<cfset temp = QuerySetCell(dataQuery, "State", "tx", 1)>
	<cfset temp = QuerySetCell(dataQuery, "AreaCode", 214, 1)>

	<cfset temp = QuerySetCell(dataQuery, "City", "fort worth", 2)>
	<cfset temp = QuerySetCell(dataQuery, "State", "tx", 2)>
	<cfset temp = QuerySetCell(dataQuery, "AreaCode", 817, 2)>

	<cfset temp = QuerySetCell(dataQuery, "City", "san antonio", 3)>
	<cfset temp = QuerySetCell(dataQuery, "State", "tx", 3)>
	<cfset temp = QuerySetCell(dataQuery, "AreaCode", 210, 3)>

	<cfset temp = QuerySetCell(dataQuery, "City", "L.A.", 4)>
	<cfset temp = QuerySetCell(dataQuery, "State", "ca", 4)>
	<cfset temp = QuerySetCell(dataQuery, "AreaCode", 213, 4)>

	<cfset temp = QuerySetCell(dataQuery, "City", "Austin", 5)>
	<cfset temp = QuerySetCell(dataQuery, "State", "tx", 5)>
	<cfset temp = QuerySetCell(dataQuery, "AreaCode", 512, 5)>


<h4>The query object contents:</h4>
	<cfoutput query = "dataQuery">
    #City# #State# #AreaCode#<br>
	</cfoutput>
	</br>


<h4> Add the data into a two dimensional array.</h4>

<!--- Declare the array --->
	<cfset CityInfo=arraynew(2)>

<!--- Populate the array row by row --->
<cfloop query="dataQuery">
    <cfset myarray[CurrentRow][1]=City>
    <cfset myarray[CurrentRow][2]=State>
    <cfset myarray[CurrentRow][3]=AreaCode>
</cfloop>

<!--- Now, create a loop to output the array contents --->
<cfset total_records=dataQuery.recordcount>
<cfloop index="Counter" from=1 to="#Total_Records#">
    <cfoutput>
        City: #MyArray[Counter][1]#,
        State: #MyArray[Counter][2]#,
        Area Code: #MyArray[Counter][3]#,
        </br>
    </cfoutput>
</cfloop>


