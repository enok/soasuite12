<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="saibot.airport/data/flight/FlightEventLogFileWriter" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:ns0="saibot.airport/services/flightreport" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:reference="saibot.airport/data/reference" xmlns:common="saibot.airport/data/common"
                xmlns:flight="saibot.airport/data/flight" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/FlightReportService.xsd"/>
            <oracle-xsl-mapper:rootElement name="reportFlightStatusUpdateRequestMessage" namespace="saibot.airport/services/flightreport"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/nxsd_FlightEventLogFile.xsd"/>
            <oracle-xsl-mapper:rootElement name="FlightEventLog" namespace="saibot.airport/data/flight/FlightEventLogFileWriter"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [WED AUG 09 19:45:29 BRT 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:FlightEventLog>
         <tns:FlightEventLogEntry>
            <tns:FlightDate>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightDate"/>
            </tns:FlightDate>
            <tns:Aircarrier>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:Carrier"/>
            </tns:Aircarrier>
            <tns:FlightNumber>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightNumber"/>
            </tns:FlightNumber>
            <tns:StatusTimestamp>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:EventTimestamp"/>
            </tns:StatusTimestamp>
            <tns:NewStatus>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:Status"/>
            </tns:NewStatus>
            <tns:Action>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:Action"/>
            </tns:Action>
            <tns:Terminal>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:GateLocation/reference:Terminal"/>
            </tns:Terminal>
            <tns:Pier>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:GateLocation/reference:Pier"/>
            </tns:Pier>
            <tns:Gate>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:GateLocation/reference:Gate"/>
            </tns:Gate>
            <tns:Runway>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:Runway"/>
            </tns:Runway>
            <tns:CheckinCounter>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:CheckinCounter"/>
            </tns:CheckinCounter>
            <tns:BagageLocation>
               <xsl:value-of select="/ns0:reportFlightStatusUpdateRequestMessage/ns0:flightStatusEvent/ns0:FlightStatus/flight:BagageLocation"/>
            </tns:BagageLocation>
         </tns:FlightEventLogEntry>
      </tns:FlightEventLog>
   </xsl:template>
</xsl:stylesheet>
