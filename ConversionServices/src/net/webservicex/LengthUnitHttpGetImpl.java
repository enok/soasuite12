package net.webservicex;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

import javax.xml.bind.annotation.XmlSeeAlso;

@WebService(name = "lengthUnitHttpGet", targetNamespace = "http://www.webserviceX.NET/")
//@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
@SOAPBinding(parameterStyle=SOAPBinding.ParameterStyle.WRAPPED)
@XmlSeeAlso({ ObjectFactory.class })
public class LengthUnitHttpGetImpl {
    public LengthUnitHttpGetImpl() {
    }

    @WebMethod(operationName = "ChangeLengthUnit")
    @WebResult(name = "double", partName = "Body", targetNamespace = "http://www.webserviceX.NET/")
    public double changeLengthUnit(@WebParam(name = "LengthValue", partName = "LengthValue",
                                             targetNamespace = "http://www.w3.org/2001/XMLSchema") String lengthValue,
                                   @WebParam(name = "fromLengthUnit", partName = "fromLengthUnit",
                                             targetNamespace = "http://www.w3.org/2001/XMLSchema")
                                   String fromLengthUnit,
                                   @WebParam(name = "toLengthUnit", partName = "toLengthUnit",
                                             targetNamespace = "http://www.w3.org/2001/XMLSchema")
                                   String toLengthUnit) {
        return 0;
    }
}
