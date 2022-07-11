from random import randint

DEBUG = False

def check_equals(arr1, arr2):
  return all(arr1[i] == arr2[i] for i in range(len(arr1))) if len(arr1) == len(arr2) else False

def generate_array(size):
  return [randint(-100, 100) for _ in range(size)]

def get_sorted_copy(array):
  sorted_array = array.copy()
  sorted_array.sort()
  return sorted_array



def bubble_sort(array):
  """
  A ideia geral é, a cada loop, empurrar o maior elemento até sua posição correta.
  Ex: na primeira vez que percorre -> 
    ele compara os elementos 2 a 2, sempre passando o maior elemento para a posição seguinte
    ao final, o maior elemento do array necessariamente estará na última posição
    a próxima iteração vai achar o segundo maior e colocá-lo na penúltima posição
    gerando assim um subarray à direita que está ordenado e um à esquerda onde está sendo feita a iteração
    portanto, o loop externo vai de [n-1, 1] e o interno [0, i-1]
  """

  if DEBUG: print ('I -> BUBBLE: ', array)

  for limite_nao_ordenado in range(len(array) - 1, 0, -1):  # n-1 até 1, já que não faz sentido ir abaixo disso
    for i in range(limite_nao_ordenado):
      if (array[i] > array[i+1]):
        array[i], array[i+1] = array[i+1], array[i]
        if DEBUG: print ('T -> BUBBLE: ', array)

  if DEBUG: print('E -> BUBBLE: ', array)

def bubble_sort_reverse(array):
  # TODO: implementar
  pass

def selection_sort(array):
  """
  A ideia geral é, para cada loop, procurar o maior/menor elemento no subarray e colocá-lo na sua posição
  """

  if DEBUG: print ('I -> SELECTION: ', array)

  for ponteiro_lento in range(len(array) - 1):
    ponteiro_min = ponteiro_lento
    
    for ponteiro_procurador in range(ponteiro_lento + 1, len(array)):
      if (array[ponteiro_min] > array[ponteiro_procurador]):
        ponteiro_min = ponteiro_procurador

    if array[ponteiro_min] != array[ponteiro_lento]:
      array[ponteiro_min], array[ponteiro_lento] = array[ponteiro_lento], array[ponteiro_min]
      if DEBUG: print ('T -> SELECTION: ', array)
  
  if DEBUG: print ('E -> SELECTION: ', array)

def selection_sort_reverse(array):
  pass


def insertion_sort(array):
  """
  Para cada número iterado pelo ponteiro lento, enquanto o ponteiro rápido enxergar números menores que ele
  estes números serão empurrados para frente, dando assim espaço para a INSERÇÃO do número iterado pelo
  ponteiro lento.
  Assim, a parte esquerda do array sempre vai se tornando ordenada e a direita em ordenamento
  """
  if DEBUG: print ('I -> INSERTION: ', array)
  
  for i in range(1, len(array)):
    curr = array[i]
    j = i - 1
    while j >= 0 and curr < array[j]:
      array[j + 1] = array[j]
      j -= 1
    array[j + 1] = curr

  if DEBUG: print ('E -> INSERTION: ', array)

def insertion_sort_reverse(array):
  """
  Mesmo que o insertion, só que começa pela direita e vai à procura do maior número, tornando a parte direita ordenada
  """
  if DEBUG: print ('I -> INSERTION REVERSE: ', array)
  
  for i in range(len(array) - 2, 0, -1):
    curr = array[i]
    j = i - 1
    while j >= 0 and curr > array[j]:
      array[j + 1] = array[j]
      j -= 1
    array[j + 1] = curr

  if DEBUG: print ('E -> INSERTION REVERSE: ', array)

def merge(array, left, right):
  """
  Itera cada array e vai colocando os menores números no array resultado.
  @see merge_sort
  """
  mid = (left + right) // 2
  c1 = left
  c2 = mid + 1
  r1 = mid + 1
  r2 = right + 1

  result = []
  while (c1 < r1 and c2 < r2):
    if array[c1] < array[c2]:
      result.append(array[c1])
      c1 += 1
    else:
      result.append(array[c2])
      c2 += 1

  while (c1 < r1):
    result.append(array[c1])
    c1 += 1

  while (c2 < r2):
    result.append(array[c2])
    c2 += 1

  c = 0
  for i in range(left, r2):
    array[i] = result[c]
    c += 1

def merge_sort(array, left, right):
  """
  Separa o array na metade até que haja só um elemento, daí vai MESCLANDO os subarrays. Neste processo,
  os números vão sendo colocados em ordem.
  @see merge
  """
  if (right > left): 
    mid = (right + left) // 2
    merge_sort(array, left, mid)
    merge_sort(array, mid + 1, right)
    merge(array, left, right)

def partition(array, left, right) -> int:
  """
  Coloca elementos menores que o pivot escolhido à esquerda dele
  """
  pivot = array[left]
  i = left

  for j in range(left + 1, right + 1):
    # passa a galerinha menor que o pivot pro inicio do array
    if array[j] <= pivot:
      i += 1
      array[i], array[j] = array[j], array[i]
  
  # Coloca pivot no seu devido lugar
  array[i], array[left] = array[left], array[i]
  return i

def quick_sort(array, left, right):
  """
  @see partition
  """
  if (right > left):
    ipivot = partition(array, left, right)
    quick_sort(array, left, ipivot - 1)
    quick_sort(array, ipivot + 1, right)

if __name__ == '__main__':
  array = [10, 14, 2, 6, 0, 10, 15, 14, 0]
  sorted_array = get_sorted_copy(array)
  print(array)
  print(sorted_array)

  curr_array = array.copy()
  bubble_sort(curr_array)
  print('SORTED BY BUBBLE' if check_equals(curr_array, sorted_array) else 'DEU MERDA NO BUBBLE ---------------------------------->')

  curr_array = array.copy()
  selection_sort(curr_array)
  print('SORTED BY SELECTION' if check_equals(curr_array, sorted_array) else 'DEU MERDA NO SELECTION ---------------------------------->')

  curr_array = array.copy()
  insertion_sort(curr_array)
  print('SORTED BY INSERTION' if check_equals(curr_array, sorted_array) else 'DEU MERDA NO INSERTION ---------------------------------->')

  curr_array = array.copy()
  insertion_sort(curr_array)
  print('SORTED BY INSERTION_REVERSE' if check_equals(curr_array, sorted_array) else 'DEU MERDA NO INSERTION_REVERSE ---------------------------------->')

  curr_array = array.copy()
  merge_sort(curr_array, 0, len(curr_array) - 1)
  print('SORTED BY MERGE' if check_equals(curr_array, sorted_array) else 'DEU MERDA NO MERGE ---------------------------------->')

  curr_array = array.copy()
  quick_sort(curr_array, 0, len(curr_array) - 1)
  print('SORTED BY QUICK' if check_equals(curr_array, sorted_array) else 'DEU MERDA NO QUICK ---------------------------------->')