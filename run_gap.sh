
#datasets=(sphere)
#datasets=(player youtube game house car)
#datasets=(player youtube)
datasets=(player)
ver=gap-1 # @2022-1020: vary tau
ver=gap-2 # @2022-1107: a backup QP for Filter
ver=gap-3 # @2022-1107: another run, discard gap-2
ver=gap-4 # @2022-1110: better QP and fancier hp-lp
#its=(1 2 3)
its=(1 2 3)
#tasks=(pair-lp hp-lp list list-lp)
tasks=(list)

#mp=T
mp=F

export PYTHONHASHSEED=0 # turn off inter-process random hashing

for dat in ${datasets[@]}; do
for it in ${its[@]}; do
for task in ${tasks[@]}; do
    nohup python -m experiments.ex_gap $ver $it ${dat} $task $mp &> logdata-$dat-$ver-$it-$task &
done
done
done
