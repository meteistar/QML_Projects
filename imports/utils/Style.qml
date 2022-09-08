pragma Singleton
import QtQuick 2.11

QtObject {
    id: root

    property string mainColor: "#00D1A9"
    property string bgColor: "#D1DBE1"
    property string inactiveColor: "#A8A8A8"

    property string imgPath: "../../assets/"

    function image(name){
        return Qt.resolvedUrl(imgPath + name + ".png")
    }

    property string fontConstrastColor: "#FFFFFF"
    property string fontPrimaryColor: "#1E272E"
    property string fontSecondaryColor: "#AAAAAA"

    property int fontSizeS: 14
    property int fontSizeM: 18
    property int fontSizeL: 24

    property string fontFamilyRegular: quicksandBook.name
    property string fontFamilyBold: quicksandBold.name

    property FontLoader quicksandBold: FontLoader{
        source: "../../assets/fonts/Quicksand-Bold.otf"
    }

    property FontLoader quicksandBook: FontLoader{
        source: "../../assets/fonts/Quicksand_Book.otf"
    }
}
