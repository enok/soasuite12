
package net.webservicex;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="ChangeLengthUnitResult" type="{http://www.w3.org/2001/XMLSchema}double"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = { "changeLengthUnitResult" })
@XmlRootElement(name = "ChangeLengthUnitResponse")
public class ChangeLengthUnitResponse {

    @XmlElement(name = "ChangeLengthUnitResult")
    protected double changeLengthUnitResult;

    /**
     * Gets the value of the changeLengthUnitResult property.
     *
     */
    public double getChangeLengthUnitResult() {
        return changeLengthUnitResult;
    }

    /**
     * Sets the value of the changeLengthUnitResult property.
     *
     */
    public void setChangeLengthUnitResult(double value) {
        this.changeLengthUnitResult = value;
    }

}
