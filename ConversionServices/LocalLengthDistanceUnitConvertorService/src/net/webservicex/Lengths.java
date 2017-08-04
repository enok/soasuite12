
package net.webservicex;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for Lengths.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="Lengths"&gt;
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string"&gt;
 *     &lt;enumeration value="Angstroms"/&gt;
 *     &lt;enumeration value="Nanometers"/&gt;
 *     &lt;enumeration value="Microinch"/&gt;
 *     &lt;enumeration value="Microns"/&gt;
 *     &lt;enumeration value="Mils"/&gt;
 *     &lt;enumeration value="Millimeters"/&gt;
 *     &lt;enumeration value="Centimeters"/&gt;
 *     &lt;enumeration value="Inches"/&gt;
 *     &lt;enumeration value="Links"/&gt;
 *     &lt;enumeration value="Spans"/&gt;
 *     &lt;enumeration value="Feet"/&gt;
 *     &lt;enumeration value="Cubits"/&gt;
 *     &lt;enumeration value="Varas"/&gt;
 *     &lt;enumeration value="Yards"/&gt;
 *     &lt;enumeration value="Meters"/&gt;
 *     &lt;enumeration value="Fathoms"/&gt;
 *     &lt;enumeration value="Rods"/&gt;
 *     &lt;enumeration value="Chains"/&gt;
 *     &lt;enumeration value="Furlongs"/&gt;
 *     &lt;enumeration value="Cablelengths"/&gt;
 *     &lt;enumeration value="Kilometers"/&gt;
 *     &lt;enumeration value="Miles"/&gt;
 *     &lt;enumeration value="Nauticalmile"/&gt;
 *     &lt;enumeration value="League"/&gt;
 *     &lt;enumeration value="Nauticalleague"/&gt;
 *   &lt;/restriction&gt;
 * &lt;/simpleType&gt;
 * </pre>
 *
 */
@XmlType(name = "Lengths")
@XmlEnum
public enum Lengths {

    @XmlEnumValue("Angstroms")
    ANGSTROMS("Angstroms"),
    @XmlEnumValue("Nanometers")
    NANOMETERS("Nanometers"),
    @XmlEnumValue("Microinch")
    MICROINCH("Microinch"),
    @XmlEnumValue("Microns")
    MICRONS("Microns"),
    @XmlEnumValue("Mils")
    MILS("Mils"),
    @XmlEnumValue("Millimeters")
    MILLIMETERS("Millimeters"),
    @XmlEnumValue("Centimeters")
    CENTIMETERS("Centimeters"),
    @XmlEnumValue("Inches")
    INCHES("Inches"),
    @XmlEnumValue("Links")
    LINKS("Links"),
    @XmlEnumValue("Spans")
    SPANS("Spans"),
    @XmlEnumValue("Feet")
    FEET("Feet"),
    @XmlEnumValue("Cubits")
    CUBITS("Cubits"),
    @XmlEnumValue("Varas")
    VARAS("Varas"),
    @XmlEnumValue("Yards")
    YARDS("Yards"),
    @XmlEnumValue("Meters")
    METERS("Meters"),
    @XmlEnumValue("Fathoms")
    FATHOMS("Fathoms"),
    @XmlEnumValue("Rods")
    RODS("Rods"),
    @XmlEnumValue("Chains")
    CHAINS("Chains"),
    @XmlEnumValue("Furlongs")
    FURLONGS("Furlongs"),
    @XmlEnumValue("Cablelengths")
    CABLELENGTHS("Cablelengths"),
    @XmlEnumValue("Kilometers")
    KILOMETERS("Kilometers"),
    @XmlEnumValue("Miles")
    MILES("Miles"),
    @XmlEnumValue("Nauticalmile")
    NAUTICALMILE("Nauticalmile"),
    @XmlEnumValue("League")
    LEAGUE("League"),
    @XmlEnumValue("Nauticalleague")
    NAUTICALLEAGUE("Nauticalleague");
    private final String value;

    Lengths(String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    public static Lengths fromValue(String v) {
        for (Lengths c : Lengths.values()) {
            if (c.value.equals(v)) {
                return c;
            }
        }
        throw new IllegalArgumentException(v);
    }

}
