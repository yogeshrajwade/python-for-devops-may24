import wikipedia


def wiki(name="war goddess", length=1):
    """this is wikipedia fetchter"""
    my_wiki = wikipedia.summary(name, length)
    return my_wiki
