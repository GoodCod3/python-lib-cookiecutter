import unittest

from {{cookiecutter.project_name}}.module1 import add


class AddTestSuite(unittest.TestCase):
    def test_add_method_sum_params(self):
        result = add(2, 2)
        expected_result = 4

        self.assertEqual(result, expected_result)

