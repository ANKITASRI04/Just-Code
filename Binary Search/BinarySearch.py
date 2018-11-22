# Python code to implement iterative Binary
# Search.

# It returns location of x in given array arr
# if present, else returns -1
def binarySearch(arr, l, r, x):
    while l <= r:

        mid = l + (r - l) / 2;

        # Check if x is present at mid
        if arr[int(mid)] == x:
            return int(mid)

            # If x is greater, ignore left half
        elif arr[int(mid)] < x:
            l = int(mid) + 1

        # If x is smaller, ignore right half
        else:
            r = int(mid) - 1

    # If we reach here, then the element
    # was not present
    return -1


# Test array
arr = [2, 3, 4, 10, 40]
x = 10

# Function call
result = binarySearch(arr, 0, len(arr) - 1, x)

if result == -1:
     print("Elememnt not found")
else:
     print("Element found at ",result)









def BinarySearchSecond(arr,initial,last,key):
    if initial <= last:
        mid = initial + (last - initial)/2
        midInt = int(mid)

        if arr[midInt] == key:
            print("Element found at ",midInt)

        elif arr[midInt]>key:
            BinarySearchSecond(arr,initial,midInt -1,key)

        else:
            BinarySearchSecond(arr,midInt+1,last,key)



BinarySearchSecond(arr,0,len(arr)-1,10)

