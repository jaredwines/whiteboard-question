import kivy  # importing main package
from kivy.app import App  # required base class for your app.
from kivy.uix.label import Label  # uix element that will hold text
kivy.require("1.10.1")  # make sure people running py file have right version

# Our simple app. NameApp  convention matters here. Kivy
# uses some magic here, so make sure you leave the App bit in there!
class EpicApp(App):
    # This is your "initialize" for the root wiget
    def build(self):
        # Creates that label which will just hold text.
        return Label(text="Hey there!")


# Run the app.
if __name__ == "__main__":
    EpicApp().run()