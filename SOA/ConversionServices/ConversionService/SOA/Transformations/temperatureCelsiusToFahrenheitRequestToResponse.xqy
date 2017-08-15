xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace con="saibot.airport/services/utility/conversion";
(:: import schema at "../Schemas/ConversionService.xsd" ::)

declare variable $temperatureCelsiusToFahrenheitRequest as element() (:: schema-element(con:temperatureCelsiusToFahrenheitRequestMessage) ::) external;

declare function local:temperatureCelsiusToFahrenheitRequestToResponse($temperatureCelsiusToFahrenheitRequest as element() (:: schema-element(con:temperatureCelsiusToFahrenheitRequestMessage) ::)) as element() (:: schema-element(con:temperatureCelsiusToFahrenheitResponseMessage) ::) {
    <con:temperatureCelsiusToFahrenheitResponseMessage>
        <con:temperature>{fn:data($temperatureCelsiusToFahrenheitRequest/con:temperature) * (9 div 5) + 32}</con:temperature>
    </con:temperatureCelsiusToFahrenheitResponseMessage>
};

local:temperatureCelsiusToFahrenheitRequestToResponse($temperatureCelsiusToFahrenheitRequest)
