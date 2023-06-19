function mlir_and_test() {
    echo "case_name: $1"
    echo "target: $2"
    echo "commit_sha: $3"
    val="res_$1_$2_$3"
    return val
}