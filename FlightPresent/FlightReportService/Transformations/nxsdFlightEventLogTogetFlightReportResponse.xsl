<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:RuntimeTypeConversionFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.RuntimeTypeConversionFunctions" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="saibot.airport/data/flight/FlightEventLogFileWriter" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:tns="saibot.airport/services/flightreport" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction oraext IsUserInRoleFunction xp20 DVMFunctions oraxsl RuntimeTypeConversionFunctions XrefFunctions BasicCredentialsUserFunction"
                xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:reference="saibot.airport/data/reference"
                xmlns:common="saibot.airport/data/common" xmlns:flight="saibot.airport/data/flight">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="XSD">
            <oracle-xsl-mapper:schema location="../Resources/nxsd_FlightEventLogFile.xsd"/>
            <oracle-xsl-mapper:rootElement name="FlightEventLog" namespace="saibot.airport/data/flight/FlightEventLogFileWriter"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../Schemas/FlightReportService.xsd"/>
            <oracle-xsl-mapper:rootElement name="getFlightReportResponseMessage" namespace="saibot.airport/services/flightreport"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.2.0(XSLT Build 161003.0739.0018) AT [THU AUG 10 14:03:16 BRT 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:getFlightReportResponseMessage>
         <tns:FlightLog>
            <xsl:for-each select="/ns0:FlightEventLog/ns0:FlightEventLogEntry">
               <tns:FlightLogEntry>
                  <tns:EventTimestamp>
                     <xsl:value-of select="ns0:StatusTimestamp"/>
                  </tns:EventTimestamp>
                  <tns:Carrier>
                     <xsl:value-of select="ns0:Aircarrier"/>
                  </tns:Carrier>
                  <tns:FlightNumber>
                     <xsl:value-of select="ns0:FlightNumber"/>
                  </tns:FlightNumber>
                  <tns:FlightDate>
                     <xsl:value-of select="ns0:FlightDate"/>
                  </tns:FlightDate>
                  <tns:FlightStatus>
                     <flight:Status>
                        <xsl:value-of select="ns0:NewStatus"/>
                     </flight:Status>
                     <flight:Action>
                        <xsl:value-of select="ns0:Action"/>
                     </flight:Action>
                     <flight:BagageLocation>
                        <xsl:value-of select="ns0:BagageLocation"/>
                     </flight:BagageLocation>
                     <flight:CheckinCounter>
                        <xsl:value-of select="ns0:CheckinCounter"/>
                     </flight:CheckinCounter>
                     <flight:Runway>
                        <xsl:value-of select="ns0:Runway"/>
                     </flight:Runway>
                     <flight:GateLocation>
                        <reference:Terminal>
                           <xsl:value-of select="ns0:Terminal"/>
                        </reference:Terminal>
                        <reference:Pier>
                           <xsl:value-of select="ns0:Pier"/>
                        </reference:Pier>
                        <reference:Gate>
                           <xsl:value-of select="ns0:Gate"/>
                        </reference:Gate>
                     </flight:GateLocation>
                  </tns:FlightStatus>
               </tns:FlightLogEntry>
            </xsl:for-each>
         </tns:FlightLog>
      </tns:getFlightReportResponseMessage>
   </xsl:template>
</xsl:stylesheet>
