#! /bin/bash -x
#constant
is_present_full_time=1
is_present_half_time=2
wage_per_hr=20
max_work_days=20
max_work_hr=70
totalworkhr=0
day=1

while [ $day -le $max_work_days ] && [ $totalworkhr -lt $max_work_hr ]
do
#variable
empcheck=$(( RANDOM % 3 ))
((day++))
#selection
case $empcheck in
                $is_present_full_time )

        emphrs=8;;

                $is_present_half_time )

        emphrs=4;;
        *)
        emphrs=0;;
esac
        #cal
        totalworkhr=$((totalworkhr + emphrs))
        salary=$(( emphrs * wage_per_hr ))
done
Totalsalary=$((totalworkhr * wage_per_hr))
