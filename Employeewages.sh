
#!/bin/bash -x

ispresent=1;
parttime=2;
fullhours=8;
parthours=4;
hourlywages=100;
dailywage=0;
monthlywage=0;
monthlyworkdays=20;
monthlyworkhours=30;
totalworkdays=0;
totalworkinghours=0;

	function getworkinghours(){
	employeehours=0;
			case $1 in
				$parttime)
					employeehours=$parthours
					dailywage=$(( $hourlywages * $parthours ))
					;;
				$present)
					 employeehours=$fullhours
					dailywage=$(( $hourlywges * $fullhpurs ))
					;;
				*)
					 employeehours=0

			esac
	echo $employeehours;

	}

	while [[ $totalworkdays -le $monthlyworkdays && $totalworkinghours -le $monthlyworkhours ]]
	do
		randomcheck=$(( RANDOM % 3 ));


			workhours="$( getworkinghours  $randomcheck )"
			totalworkinghours=$(( $totalworkinghours + $workhours ))
			((totalworkdays ++))

	echo "working hours" $totalworkinghours
	echo "working days" $totalworkdays
monthlywage=$(( $monthlywage + $dailywage ))
	done
echo monthly wage of Employee is $(( $hourlywages * $totalworkinghours ))
