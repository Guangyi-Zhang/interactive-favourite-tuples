
datasets=(sphere clusters-25)
#datasets=(clusters-25)
#datasets=(sphere)
ver=prune-1 # @2022-1010
ver=prune-2 # @2022-1011
ver=prune-3 # @2022-1011: binary search for minimum good sz
ver=prune-4 # @2022-1011: n 10k -> 1k
ver=prune-5 # @2022-1012: bug: re-use ft in binary search
ver=prune-6 # @2022-1017: +clusters
ver=prune-7 # @2022-1017: no binary search
ver=prune-8 # @2022-1017: start with d=2; tol and n at v7
ver=prune-9 # @2022-1017: +list-lb
ver=prune-9 # @2023-0408 larger d. @2023-0517: more its
ver=prune-10 # @2023-0517 create D2 for runtime
#its=(1 2 3)
#its=(2 3)
its=(1)
#tasks=(n d)
#tasks=(tol)
tasks=(d)
#tasks=(d tol)
#tasks=(n)

#mp=T
mp=F

for dat in ${datasets[@]}; do
for it in ${its[@]}; do
for task in ${tasks[@]}; do
    nohup python -m experiments.ex_prune $ver $it ${dat} $task $mp &> logdata-$dat-$ver-$it-$task &
done
done
done
