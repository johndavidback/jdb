import os
import index
import unittest
import tempfile

class JdbTestCase(unittest.TestCase):
    def setUp(self):
        self.app = index.app.test_client()

    def tearDown(self):
        pass

    def test_home_page(self):
        response = self.app.get('/')
        assert response.status_code == 200

if __name__ == '__main__':
    unittest.main()
