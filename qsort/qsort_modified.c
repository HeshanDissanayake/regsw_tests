#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Global counters for load and store operations
long long load_count = 0;
long long store_count = 0;

// Function to perform insertion sort
void insertion_sort(int arr[], int low, int high, int insertion_threshold) {
   load_count =  load_count + (high-low);
   store_count =  store_count + (high-low);
   for (int i = low + 1; i <= high; i++) {
        int key = arr[i];  
        int j = i - 1;
        
        while (j >= low && arr[j] > key) {
            arr[j + 1] = arr[j];  
            j--;
        }
        arr[j + 1] = key;  
    }
}

// Function to partition the array (Lomuto partition scheme)
int partition(int arr[], int low, int high) {
    int pivot = arr[high];  
    load_count++;  // Load pivot
    int i = low - 1;

    for (int j = low; j < high; j++) {
        load_count++;  // Load arr[j]
        if (arr[j] < pivot) {
            i++;
            // Swap arr[i] and arr[j]
            int temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
            store_count += 2;  // Two stores per swap
        }
    }
    
    // Swap arr[i+1] and arr[high] (placing pivot in correct position)
    int temp = arr[i + 1];
    arr[i + 1] = arr[high];
    arr[high] = temp;
    store_count += 2;

    return i + 1;
}

// QuickSort with Insertion Sort Hybrid
void quicksort(int arr[], int low, int high, int insertion_threshold) {
    if (high - low + 1 <= insertion_threshold) {
        insertion_sort(arr, low, high, insertion_threshold);
        return;
    }
    
    if (low < high) {
        int pivot = partition(arr, low, high);
        quicksort(arr, low, pivot - 1, insertion_threshold);
        quicksort(arr, pivot + 1, high, insertion_threshold);
    }
}

// Function to generate a random array
void generate_random_array(int arr[], int size, int max_value) {
    for (int i = 0; i < size; i++) {
        arr[i] = rand() % max_value;
        store_count++;  // Storing random values
    }
}

// Function to print an array (for debugging)
void print_array(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

// Main function to execute sorting with command-line arguments
int main(int argc, char *argv[]) {
    if (argc < 4) {
        printf("Usage: %s <array_length> <insertion_threshold> <max_value>\n", argv[0]);
        return 1;
    }

    // srand(time(NULL));  // Seed for randomness
    srand(3);  // Seed for randomness

    int array_length = atoi(argv[1]);  // Convert first argument to int
    int insertion_threshold = atoi(argv[2]);  // Convert second argument to int
    int max_value = atoi(argv[3]);  // Convert third argument to int

    int *arr = (int *)malloc(array_length * sizeof(int));

    // Generate and sort the array
    generate_random_array(arr, array_length, max_value);
    quicksort(arr, 0, array_length - 1, insertion_threshold);

    // Print results
    printf("Sorted %d elements with Insertion Sort threshold = %d\n", array_length, insertion_threshold);
    printf("Total Loads: %lld, Total Stores: %lld\n", load_count, store_count);

    free(arr);
    return 0;
}
