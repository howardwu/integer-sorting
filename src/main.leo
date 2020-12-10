// Sorts a given list of u32 integers and returns the sorted list.
function sort(mut array: [u32; 10]) -> [u32; 10] { 
    let n = 10u32;

    for i in 0..n-1 { 
        for j in i+1..n {
            if array[i] > array[j] {
                // Swap the elements at index `i` and `j`.
                let tmp = array[j]; 
                array[j] = array[i]; 
                array[i] = tmp; 
            }
        }
    }
    
    return array
}

// The 'integer-sorting' main function.
function main(array: [u32; 10]) {
    let sorted = sort(array);
    console.log("{}", sorted);
}

test function test_basic() {
    let sorted = sort([34u32, 52u32, 999999u32, 84u32, 215u32, 102u32, 888u32, 9292u32, 50482u32, 954u32]);
    console.assert([34u32, 52u32, 84u32, 102u32, 215u32, 888u32, 954u32, 9292u32, 50482u32, 999999u32] == sorted);
}
