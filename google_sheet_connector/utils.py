class GoogleSheet:

    def __init__(self):
        pass

    @staticmethod
    def master_sheet_save(data):
        school = data.get('school_name')

        # connect_google_api
        # lookup by name to determine if this is create or update
        # create and update accordingly, or save(), dont forget to sort after with refresh
        pass

    @staticmethod
    def master_sheet_del(data):
        school = data.get('school_name')

        pass

    @classmethod
    def init_google_sheet(cls, school_name):
        # grab sheet ID, and other constants depending on school name

        # pass contants to googlesheet object, returns the full object

        pass

    @staticmethod
    def populate_contants(cls):
        pass

    @staticmethod
    def refresh_sheet(cls, sheet):
        pass

    @staticmethod
    def data_clean():
        pass

    # obj methods

    def create(self):
        pass

    def update(self):
        pass

    def delete(self):
        pass

    def match(self):
        pass
