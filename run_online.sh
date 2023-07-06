
#datasets=(sphere)
#datasets=(player)
datasets=(car)
#datasets=(youtube)
#datasets=(game)
#datasets=(house)
#datasets=(player car)
#datasets=(house game car)
#datasets=(player youtube)
#datasets=(house game car player youtube)
ver=online-1 # @2022-1012
ver=online-2 # @2022-1014: +rand, +lphp
ver=online-3 # @2022-1015: many fixes
ver=online-4 # @2022-1016: manage all filters by IterFilter
ver=online-5 # @2022-1017: no sortX
ver=online-6 # @2022-1017: +prune by norm vs. tol
ver=online-7 # @2022-1020: maxiter and coarse pool
ver=online-8 # @2022-1107: bug in prune_basic; fancier HS-LP; true_u. @2023-0517: tol=0.005
#its=(1 2 3)
its=(2)
tasks=(rand-50 pair-lp hp hp-lp list list-lp)
#tasks=(pair-lp hp-lp list list-lp)
#tasks=(rand-50 hp)
#tasks=(list)
#tasks=(list-lp)
#tasks=(hp-lp)

#mp=T
mp=F

for dat in ${datasets[@]}; do
for it in ${its[@]}; do
for task in ${tasks[@]}; do
    nohup python -m experiments.ex_online $ver $it ${dat} $task $mp &> logdata-$dat-$ver-$it-$task &
done
done
done
