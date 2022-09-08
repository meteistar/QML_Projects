import QtQuick 2.11
import QtQuick.Particles 2.11

BaseSheet {
    id: root

    ParticleSystem{
        id: particles
        anchors.fill: parent

        ImageParticle {
            id: leafImage
            anchors.fill: parent
            source: "../assets/sheets/leaf.png"
            alpha: 0.0
            alphaVariation: 1.0
            colorVariation: 1.0
            autoRotation: true
            rotation: 180
        }

        Emitter{
            anchors.fill: parent
            emitRate: 50
            lifeSpan: 5000
            velocity: AngleDirection { angle: 10 ; angleVariation: 180 ; magnitude: 60 ; magnitudeVariation: 50}
            size: 30
            sizeVariation: 10
        }
    }
}
