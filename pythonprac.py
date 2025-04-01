##Write a python program to create 1D,2D & 3D numpy arrays. perform basic operations like reshaping, slicing and indexing.

import numpy as np

# Create a 1D array
array_1d = np.array([1, 2, 3, 4, 5, 6])
print("1D Array:\n", array_1d)

# Create a 2D array
array_2d = np.array([[1, 2, 3], [4, 5, 6]])
print("\n2D Array:\n", array_2d)

# Create a 3D array
array_3d = np.array([[[1, 2, 3], [4, 5, 6]], [[7, 8, 9], [10, 11, 12]]])
print("\n3D Array:\n", array_3d)

# Reshape the 1D array into a 2D array (2 rows, 3 columns)
reshaped_array = array_1d.reshape(2, 3)
print("\nReshaped 1D -> 2D:\n", reshaped_array)

# Slicing: Extract first row from 2D array
slice_2d = array_2d[0, :]
print("\nSliced first row from 2D array:\n", slice_2d)

# Indexing: Access element at row 1, column 2 from 2D array
indexed_value = array_2d[1, 2]
print("\nIndexed Value at (1,2) from 2D array:", indexed_value)

# Slicing: Extract the first "matrix" from 3D array
slice_3d = array_3d[0, :, :]
print("\nSliced first 2D matrix from 3D array:\n", slice_3d)

# Indexing: Access element at (1,1,1) from 3D array
indexed_3d_value = array_3d[1, 1, 1]
print("\nIndexed Value at (1,1,1) from 3D array:", indexed_3d_value)
