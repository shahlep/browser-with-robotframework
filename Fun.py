from robot.api.deco import library, keyword


@library
class Fun:
    # def __init__(self):

    @keyword
    def hi_everyone(self):
        print("this is from custom library to check user defined keywords works :) ")
