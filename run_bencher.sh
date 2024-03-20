# set environment variables with API token provided as argument
# export BENCHER_API_TOKEN=TOKEN
export BENCHER_PROJECT=dummy
# set command to run benchmark and save results
export BENCHER_CMD="/Users/kacper/dummyjuce/build/Benchmarks | tee benchmarks_result.txt”
# run n times
for i in {1..$1}; do
 bencher run --adapter cpp_catch2 --file benchmarks_result.txt;
done