pragma Singleton
import QtQuick 2.11

QtObject {
    id: root

    //TODO add support for a second theme
    //TODO add support for responsive UI

    property int screenWidth: 1920
    property int screenHeight: 1080

    property string bgColor: "#D1DBE1"
    property string mainColor: "#00D1A9"
    property string inactiveColor: "#A8A8A8"

    property string imgPath: "../../assets/"

    function image(name) {
        return Qt.resolvedUrl(imgPath + name + ".png");
    }

    property string fontContrastColor: "#FFFFFF"
    property string fontPrimaryColor: "#1E272E"
    property string fontSecondaryColor: "#AAAAAA"

    property int fontSizeS: 14
    property int fontSizeM: 18
    property int fontSizeL: 24

    property string fontFamilyRegular: quicksandBook.name
    property string fontFamilyBold: quicksandBold.name

    property FontLoader quicksandBook: FontLoader {
        source: "../../assets/fonts/Quicksand_Book.otf"
    }

    property FontLoader quicksandBold: FontLoader {
        source: "../../assets/fonts/Quicksand_Bold.otf"
    }
}
