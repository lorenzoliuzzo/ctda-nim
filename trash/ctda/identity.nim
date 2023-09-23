import macros

macro identityMatrix*(n: Natural): array[n, array[n, int8]] =
  for i in 0..n:
    result[i] = newSeq[int8](n, 0)
    for j in 0..n:
      if i == j:
        result[i][j] = 1
  result


let result = identityMatrix(3)
echo result
