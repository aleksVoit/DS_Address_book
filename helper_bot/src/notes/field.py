class Field:
    def __init__(self, value): # type: ignore
        self.__value = None
        self.value = value

    @property
    def value(self):
        return self.__value

    @value.setter
    def value(self, value): # type: ignore
        self.__value = self.validate(value) # type: ignore

    def validate(self, value): # type: ignore
        pass

    def check_availability(self, value: str):
        pass

    def __str__(self):
        return str(self.value)

    def __lt__(self, other): # type: ignore
        return self.value < other.value # type: ignore

    def __eq__(self, other): # type: ignore
        return self.value == other.value # type: ignore
