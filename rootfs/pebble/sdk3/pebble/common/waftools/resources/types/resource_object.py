import pickle

class ResourceObject(object):
    """
    Defines a single resource object in a namespace. Must be serializable.
    """

    def __init__(self, definition, data):
        self.definition = definition

        if isinstance(data, list):
            self.data = b"".join(data)
        else:
            self.data = data

    def dump(self, output_node):
        output_node.parent.mkdir()
        with open(output_node.abspath(), 'wb') as f:
            pickle.dump(self, f, pickle.HIGHEST_PROTOCOL)

    @classmethod
    def load(cls, path):
        with open(path, 'rb') as f:
            return pickle.load(f)
