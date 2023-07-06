
datasets=(sphere clusters-25)
#datasets=(clusters-25)
#datasets=(sphere)
ver=param-1 # @2023-0117
its=(1 2 3)
#its=(1)
tasks=(nq frac)
#tasks=(frac)

mp=T
#mp=F

for dat in ${datasets[@]}; do
for it in ${its[@]}; do
for task in ${tasks[@]}; do
    nohup python -m experiments.ex_param $ver $it ${dat} $task $mp &> logdata-$dat-$ver-$it-$task &
done
done
done
