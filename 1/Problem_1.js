var sum_to_n_a = function(n) {
    //Take the sum of the first and last term and multiply by half the number of elements in the summation
    
    return (n+1)*(n)/2 
};

var sum_to_n_b = function(n) {
    //Brute force addition of all the terms using a for loop

    let result = 0;
    for(let i = 1; i<=n; i++){
        result += i;
    }
    return result;
};

var sum_to_n_c = function(n) {
    //Use recursion to sum values
    if (n==0){
        return 0;
    }else{
        return n + sum_to_n_c(n-1);
    }
};

