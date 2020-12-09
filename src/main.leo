// Sorts a given list of u32 integers and returns the sorted list.
function sort(mut arr: [u32; 10]) -> [u32; 10] { 
    let n = 10u32;

    for i in 0..n-1 { 
        // Find the minimum number in the array.
        let mut minimum = i; 

        for j in i+1..n {
            if arr[j] < arr[minimum] {
                minimum = j;
            } 
        }
            
        // Switch the minimum number and the first number. 
        let tmp = arr[minimum]; 
        arr[minimum] = arr[i]; 
        arr[i] = tmp; 
    }
    
    return arr
}

// The 'integer-sorting' main function.
function main() {
    let sorted = sort([34u32, 52u32, 999999u32, 84u32, 215u32, 102u32, 888u32, 9292u32, 50482u32, 954u32]);
    console.log("{}", sorted);
}

test function test_basic() {
    let sorted = sort([34u32, 52u32, 999999u32, 84u32, 215u32, 102u32, 888u32, 9292u32, 50482u32, 954u32]);
    console.assert([34u32, 52u32, 84u32, 102u32, 215u32, 888u32, 954u32, 9292u32, 50482u32, 999999u32] == sorted);
}
