# test_task_travel_point

## Умова:
В системі для управління зоопарком числяться наступні тварини:
| animal species | age | sex    |
| -------------- | --- | ------ |
| monkey         | 3   | male   |
| squirrel       | 5   | female |
| monkey         | 1   | male   |
| monkey         | 11  | male   |

## Завдання:
Реалізуйте на Ruby пошук звірів так, щоб працював даний фільтр:

`Animal.monkeys.age_less_than(5).males`

## Отриманий результат:
>Species: monkey, Age: 3, Sex: male <br>
Species: monkey, Age: 1, Sex: male
