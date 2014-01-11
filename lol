<!DOCTYPE html>
<html>
<body>


<script>
function request(name,depart,time,driver,ride)
{
this.name=name;
this.depart=depart;
this.time=time;
this.driver=driver;
this.ride=ride;
}

person= new request("James","Stanford",3,"yes","no");
persontwo= new request("Tim","Stanford",3,"no","no");
personthree= new request("Edric","Stanford",3,"no","no");
personfour= new request("Edwin","Calgary",3,"no","no");

var people = new Array();
people[0] = person;
people[1] = persontwo;
people[2] = personthree;
people[3] = personfour;

var drivers = new Array();
var counter = 0;
for(var i=0;i<4;i++)
{
if(people[i].driver == "yes")
{
drivers[counter] = new Array();
drivers[counter][0] = people[i];
counter = counter+1;
}
}


for(var i=0;i<counter;i++)
{
var countertwo = 0;

for(var j=0;j<4;j++)
{

if(people[j].depart==drivers[i][0].depart)
{
drivers[i][countertwo] = people[j];
drivers[i][countertwo].ride="yes";

countertwo = countertwo+1;

}
}
}


document.write(person.name + " is leaving " + person.depart + " at " + person.time + ".");
document.write("<br>");
document.write(persontwo.name + " is leaving " + persontwo.depart + " at " + persontwo.time + ".");
document.write("<br>");


if(person.depart == persontwo.depart)
{
document.write(person.name + " and " + persontwo.name + " are both leaving from " + person.depart + ". <br>");
} else 
{
document.write(person.name + " and " + persontwo.name + " are not leaving from the same place." + "<br>");
}

for(var i=0;i<counter;i++)
{
for(var j=0;j<drivers[i].length;j++)
{
document.write(drivers[i][j].name + ", ");
}
document.write("have a ride together.");
}




</script>

</body>
</html>