import fizzbuzz
import unittest

class FizzBuzzTest(unittest.TestCase):

    def test_fizz(self):
        number = 6
        result = fizzbuzz.fizzbuzz(number)
        self.assertEqual(result, 'Fizz')
    
    def test_buzz(self):
        number = 50
        result = fizzbuzz.fizzbuzz(number)
        self.assertEqual(result, 'Buzz')

    def test_fizzbuzz(self):
        number = 30
        result = fizzbuzz.fizzbuzz(number)
        self.assertEqual(result, 'FizzBuzz')
    
if __name__ == '__main__':
    unittest.main()
