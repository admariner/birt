# Localized messages for the DTE Engine. Messages here give 
# the text of Design Engine exceptions.

###########################################################
#for test only
Error.Msg001={0} in {1} nicht gefunden.

###########################################################

#load data engine factory exception
load.factory.error=Beim Laden der Factory des Datenadapters ist ein Fehler aufgetreten.

context.null.error=Datenkontext darf nicht Null sein.

context.invalidDesigntimeMethod=Reportkontextmethode [{0}] kann nur in Laufzeit verwendet werden.

adaptor.invalid.mode=Der Modus-Wert {0} des Datenadapter-Kontexts ist ung�ltig.

invalid.cache.option=Der Optionswert {0} des Datenadapter-Kontexts ist ung�ltig.

datasource.null.error=Datenquelle von Datensatz '{0}' nicht gefunden.

datasource.exid.error=Fehlende Erweiterungs-ID in Datenquellendefinition: {0}.

datasource.cassandra.error=Hector Clientbibliothek JARs zur Unterst�tzung der geskripteten Datenquelle Cassandra wurden nicht gefunden.

datasethandle.null.error=Datensatz-Handle darf nicht Null sein.

datasethandle.invalidColumnIndex=Ung�ltiger Spaltenindex.

adapter.invalid.datetimetype=Der Typ f�r Datum/Zeit "{0}" ist ung�ltig.

adapter.invalid.aggregationfunctionname=Die Aggregatfunktion {0} ist ung�ltig.

invalid.datetime.value=Datums-/Uhrzeitwert "{0}" ist ung�ltig.

missing.join.condition=Die Knotenpunktbedingung zwischen dem prim�ren Datensatz '{0}' und der Dimension '{1}' im Quader '{2}' fehlt.

exception.error=Ein Ausnahmefehler ist w�hrend der Verarbeitung aufgetreten. N�here Informationen finden Sie in der folgenden Meldung:

invalid.level.expression=Der Ebenenname "{0}" wurde nicht gefunden.

invalid.measure.expression=Der Ausdruck f�r die Ma�einheit "{0}" darf nicht Null sein.

invalid.data.type=Ung�ltiger Datentyp: {0}.

invalid.binding.expression=Ung�ltiger Ausdruck: {0}.

invalid.computedColumn.expression=Ung�ltige berechnete Spalte '{0}', die sich auf eine ung�ltige Datensatzspalte '{1}' bezieht.

cube.error.createhierarchy=Fehler beim Erstellen von Hierarchie:{0}.

cube.error.createdimension=Fehler beim Erstellen von Dimension:{0}.

cube.error.createmeasure=Fehler beim Erstellen von Ma�einheit.

cube.error.datasetmiss=Der Quader kann nicht erstellt werden, da der zugeh�rige Datensatz fehlt.

cube.jointColumnNotInLevels=Verkn�pfungsspalte '{0}' ist nicht als Schl�sselfeld einer Ebene in Dimension '{1}' definiert.

cube.unsupportedAggregationInBinding=Funktion 'TopN/BottomN' in Bindung '{0}' wird in xTab nicht unterst�tzt.

cube.error.aggregationFilter.referCalculatedMeasure=Ung�ltiges Aggregat '{0}'. Der Filterausdruck gab eine berechnete Einheit '{1}' an.

cube.query.error.dimensionMiss=Dimension "{0}" ist nicht im Quader vorhanden.

cube.query.error.levelMiss=Ebene mit Uhrzeitformat "{0}" ist im Quader f�r die zeitliche Dimension "{1}" nicht vorhanden.

cube.edge.error.levelMiss=Ebene mit Uhrzeitformat "{0}" fehlt in Abfragedefinition.

cube.derivedMeasure.invalid.reference=Ung�ltiger Einheitsverweis. Abgeleitete Ma�einheit '{0}' verweist auf eine ung�ltige Einheit: '{1}'.

cube.derivedMeasure.resolve.error=Abgeleitete Ma�einheit '{0}' l�sen fehlgeschlagen.

cube.derivedMeasure.recursive.ref=Abgeleitete Ma�einheit '{0}' l�sen fehlgeschlagen, da R�ckbezug gefunden wurde unter: '{1}'.

timeFunction.CURRENT_QUARTER.name = Aktuelles Quartal

timeFunction.CURRENT_QUARTER.description = Angegebene Metrik f�r das aktuelle Quartal berechnen

timeFunction.CURRENT_MONTH.name = Aktueller Monat

timeFunction.CURRENT_MONTH.description = Angegebene Metrik f�r den aktuellen Monat berechnen

timeFunction.PREVIOUS_MONTH.name = Vorheriger N-Monat

timeFunction.PREVIOUS_MONTH.description = Angegebene Metrik f�r den vorherigen N-Monat berechnen

timeFunction.PREVIOUS_WEEK_TO_DATE.name = Vorherige N-Woche bis Datum

timeFunction.PREVIOUS_WEEK_TO_DATE.description = Angegebene Metrik f�r Woche bis Datum der vorherigen N-Woche berechnen

timeFunction.PREVIOUS_MONTH_TO_DATE.name = Vorheriger N-Monat bis Datum

timeFunction.PREVIOUS_MONTH_TO_DATE.description = Angegebene Metrik f�r Monat bis Datum des vorherigen N-Monats berechnen

timeFunction.PREVIOUS_QUARTER.name = Vorheriges N-Quartal

timeFunction.PREVIOUS_QUARTER.description = Angegebene Metrik f�r das vorherige N-Quartal berechnen

timeFunction.PREVIOUS_QUARTER_TO_DATE.name = Vorheriges N-Quartal bis Datum

timeFunction.PREVIOUS_QUARTER_TO_DATE.description = Angegebene Metrik f�r das vorherige N-Quartal berechnen

timeFunction.PREVIOUS_PREVIOUS_YEAR.name = Vorheriges N-Jahr

timeFunction.PREVIOUS_PREVIOUS_YEAR.description = Angegebene Metrik f�r das vorherige N-Jahr berechnen

timeFunction.TRAILING_30_DAYS.name = Nachgestellte 30�Tage

timeFunction.TRAILING_30_DAYS.description = Angegebene Metrik f�r die letzten 30 Tage berechnen

timeFunction.TRAILING_60_DAYS.name = Nachgestellte 60�Tage

timeFunction.TRAILING_60_DAYS.description = Angegebene Metrik f�r die letzten 60 Tage berechnen

timeFunction.TRAILING_90_DAYS.name = Nachgestellte 90�Tage

timeFunction.TRAILING_120_DAYS.name = Nachgestellte 120�Tage

timeFunction.TRAILING_90_DAYS.description = Angegebene Metrik f�r die letzten 90 Tage berechnen

timeFunction.TRAILING_120_DAYS.description = Angegebene Metrik f�r die letzten 120 Tage berechnen

timeFunction.TRAILING_12_MONTHS.name = Nachgestellte 12�Monate

timeFunction.TRAILING_12_MONTHS.description = Angegebene Metrik f�r die letzten 12 Monate berechnen

timeFunction.YEAR_TO_DATE.name = Jahr bis Datum (YTD)

timeFunction.YEAR_TO_DATE.description = Angegebene Metrik f�r das gleiche Jahr berechnen

timeFunction.QUARTER_TO_DATE.name = Quartal bis Datum (QTD)

timeFunction.QUARTER_TO_DATE.description = Angegebene Metrik f�r das gleiche Quartal berechnen

timeFunction.MONTH_TO_DATE.name = Monat bis Datum (MTD)

timeFunction.MONTH_TO_DATE.description = Angegebene Metrik f�r den gleichen Monat berechnen

timeFunction.PREVIOUS_YEAR_TO_DATE.name = Vorheriges N-Jahr bis Datum

timeFunction.PREVIOUS_YEAR_TO_DATE.description = Angegebene Metrik f�r das gleiche Jahr im vorherigen N-Jahr berechnen

timeFunction.WEEK_TO_DATE_LAST_YEAR.name = Woche bis Datum vorheriges Jahr

timeFunction.WEEK_TO_DATE_LAST_YEAR.description = Angegebene Metrik f�r die gleiche Woche im vorherigen N-Jahr berechnen

timeFunction.MONTH_TO_DATE_LAST_YEAR.name = Monat bis Datum vorheriges Jahr

timeFunction.MONTH_TO_DATE_LAST_YEAR.description = Angegebene Metrik f�r den gleichen Monat im vorherigen N-Jahr berechnen

timeFunction.QUARTER_TO_DATE_LAST_YEAR.name = Quartal bis Datum vorheriges Jahr

timeFunction.QUARTER_TO_DATE_LAST_YEAR.description = Angegebene Metrik f�r das gleiche Quartal im vorherigen N-Jahr berechnen

timeFunction.CURRENT_YEAR.name = Aktuelles Jahr

timeFunction.CURRENT_YEAR.description = Angegebene Metrik f�r das aktuelle Jahr berechnen

timeFunction.WEEK_TO_DATE.name = Woche bis Datum (WTD)

timeFunction.WEEK_TO_DATE.description = Angegebene Metrik f�r die gleiche Woche berechnen

timeFunction.CURRENT_PERIOD_FROM_N_PERIOD_AGO.name = Aktuelles Zeitintervall ab vor N-Zeitintervallen

timeFunction.CURRENT_PERIOD_FROM_N_PERIOD_AGO.description = Angegebene Metrik f�r das aktuelle Zeitintervall ab vor N-Zeitintervall berechnen

timeFunction.PERIOD_TO_DATE_FROM_N_PERIOD_AGO.name = Zeitintervall bis Datum ab vor N-Zeitintervallen

timeFunction.PERIOD_TO_DATE_FROM_N_PERIOD_AGO.description = Angegebene Metrik f�r das gleiche Intervall ab vor N-Zeitintervall berechnen

timeFunction.TRAILING_N_PERIOD_FROM_N_PERIOD_AGO.name = Nachgestellte N-Zeitintervalle ab vor N-Zeitintervallen

timeFunction.TRAILING_N_PERIOD_FROM_N_PERIOD_AGO.description = Angegebene Metrik f�r nachgestelltes N-Zeitintervall ab vor N-Zeitintervall berechnen

timeFunction.TRAILING_N_MONTHS.name = Nachgestellte N-Monate

timeFunction.TRAILING_N_MONTHS.description = Angegebene Metrik f�r die letzten N Monate berechnen

timeFunction.TRAILING_N_DAYS.name = Nachgestellte N-Tage

timeFunction.TRAILING_N_DAYS.description = Angegebene Metrik f�r die letzten N-Tage berechnen

timeFunction.NEXT_N_PERIODS.name = N�chste N Zeitintervalle

timeFunction.NEXT_N_PERIODS.description = Angegebene Metrik f�r die n�chsten N-Zeitintervalle berechnen

timeFunction.PERIOD1 = Das erste Zeitintervall-Argument f�r die Zeitfunktion

timeFunction.PERIOD2 = Das zweite Zeitintervall-Argument f�r die Zeitfunktion

timeFunction.N1 = N-Wert f�r das erste Zeitintervall

timeFunction.N2 = N-Wert f�r das zweite Zeitintervall

timeFunction.PERIOD1.displayName = Erstes Zeitinter&vall

timeFunction.PERIOD2.displayName = Zweites Zeitinte&rvall

timeFunction.N1.displayName = Anzahl (Zeitintervall) zur�ckliegend

timeFunction.N2.displayName = Vo&n

timeFunction.N1.next.displayName = &Weiter

timeFunction.N2.Ago.displayName=&Zur�ckliegend

timeFunction.N1.current.displayName=A&ktuelle Seite

timeFunction.N1.period.displayName= &Periode

timeFunction.trailing.N1.period.displayName=Nac&hgestellt

timeFunction.trailing.N1.Month.displayName= &Anzahl Monate nachgestellt

timeFunction.N1.Year.displayName = &Anzahl Jahre zur�ckliegend

timeFunction.N2.Year.displayName = &Anzahl Jahre zur�ckliegend

timeFunction.N1.Year = N-Wert f�r Anzahl Jahre zur�ckliegend

timeFunction.N2.Year = N-Wert f�r Anzahl Jahre zur�ckliegend

timeFunction.N1.Month.displayName = &Anzahl Monate zur�ckliegend

timeFunction.N2.Month.displayName = &Anzahl Monate zur�ckliegend

timeFunction.N1.Month = N-Wert f�r Anzahl Monate zur�ckliegend

timeFunction.N2.Month = N-Wert f�r Anzahl Monate zur�ckliegend

timeFunction.N1.Quarter.displayName = &Anzahl Quartale zur�ckliegend

timeFunction.N2.Quarter.displayName = &Anzahl Quartale zur�ckliegend

timeFunction.N1.Quarter = N-Wert f�r Anzahl Quartale zur�ckliegend

timeFunction.N2.Quarter = N-Wert f�r Anzahl Quartale zur�ckliegend

timeFunction.N1.Week.displayName = &Anzahl Wochen zur�ckliegend

timeFunction.N2.Week.displayName = &Anzahl Wochen zur�ckliegend

timeFunction.N1.Week = N-Wert f�r Anzahl Wochen zur�ckliegend

timeFunction.N2.Week = N-Wert f�r Anzahl Wochen zur�ckliegend

timeFunction.N1.Day.displayName = &Anzahl Tag(e) zur�ckliegend

timeFunction.PERIODCHOICE.YEAR_displayName =JAHR

timeFunction.PERIODCHOICE.QUARTER_displayName =QUARTAL

timeFunction.PERIODCHOICE.MONTH_displayName =MONAT

timeFunction.PERIODCHOICE.WEEK_displayName =WOCHE

timeFunction.PERIODCHOICE.DAY_displayName =TAG

timeFunction.PERIODCHOICE.PeriodToDate.YEAR_displayName =Jahr bis Datum

timeFunction.PERIODCHOICE.PeriodToDate.QUARTER_displayName =Quartal bis Datum

timeFunction.PERIODCHOICE.PeriodToDate.MONTH_displayName =Monat bis Datum

timeFunction.PERIODCHOICE.PeriodToDate.WEEK_displayName =Woche bis Datum

timeFunction.toolTip.to=Bis

 # Localized messages for the DTE Engine. Messages here give 
# the text of Design Engine exceptions.

###########################################################
#for test only
Error.Msg001={0} in {1} nicht gefunden.

###########################################################

#load data engine factory exception
load.factory.error=Beim Laden der Factory des Datenadapters ist ein Fehler aufgetreten.

context.null.error=Datenkontext darf nicht Null sein.

context.invalidDesigntimeMethod=Reportkontextmethode [{0}] kann nur in Laufzeit verwendet werden.

adaptor.invalid.mode=Der Modus-Wert {0} des Datenadapter-Kontexts ist ung�ltig.

invalid.cache.option=Der Optionswert {0} des Datenadapter-Kontexts ist ung�ltig.

datasource.null.error=Datenquelle von Datensatz '{0}' nicht gefunden.

datasource.exid.error=Fehlende Erweiterungs-ID in Datenquellendefinition: {0}.

datasource.cassandra.error=Hector Clientbibliothek JARs zur Unterst�tzung der geskripteten Datenquelle Cassandra wurden nicht gefunden.

datasethandle.null.error=Datensatz-Handle darf nicht Null sein.

datasethandle.invalidColumnIndex=Ung�ltiger Spaltenindex.

adapter.invalid.datetimetype=Der Typ f�r Datum/Zeit "{0}" ist ung�ltig.

adapter.invalid.aggregationfunctionname=Die Aggregatfunktion {0} ist ung�ltig.

invalid.datetime.value=Datums-/Uhrzeitwert "{0}" ist ung�ltig.

missing.join.condition=Die Knotenpunktbedingung zwischen dem prim�ren Datensatz '{0}' und der Dimension '{1}' im Quader '{2}' fehlt.

exception.error=Ein Ausnahmefehler ist w�hrend der Verarbeitung aufgetreten. N�here Informationen finden Sie in der folgenden Meldung:

invalid.level.expression=Der Ebenenname "{0}" wurde nicht gefunden.

invalid.measure.expression=Der Ausdruck f�r die Ma�einheit "{0}" darf nicht Null sein.

invalid.data.type=Ung�ltiger Datentyp: {0}.

invalid.binding.expression=Ung�ltiger Ausdruck: {0}.

cube.error.createhierarchy=Fehler beim Erstellen von Hierarchie:{0}.

cube.error.createdimension=Fehler beim Erstellen von Dimension:{0}.

cube.error.createmeasure=Fehler beim Erstellen von Ma�einheit.

cube.error.datasetmiss=Der Quader kann nicht erstellt werden, da der zugeh�rige Datensatz fehlt.

cube.jointColumnNotInLevels=Verkn�pfungsspalte '{0}' ist nicht als Schl�sselfeld einer Ebene in Dimension '{1}' definiert.

cube.unsupportedAggregationInBinding=Funktion 'TopN/BottomN' in Bindung '{0}' wird in xTab nicht unterst�tzt.

cube.error.aggregationFilter.referCalculatedMeasure=Ung�ltiges Aggregat '{0}'. Der Filterausdruck gab eine berechnete Einheit '{1}' an.

cube.query.error.dimensionMiss=Dimension "{0}" ist nicht im Quader vorhanden.

cube.query.error.levelMiss=Ebene mit Uhrzeitformat "{0}" ist im Quader f�r die zeitliche Dimension "{1}" nicht vorhanden.

cube.edge.error.levelMiss=Ebene mit Uhrzeitformat "{0}" fehlt in Abfragedefinition.

cube.derivedMeasure.invalid.reference=Ung�ltiger Einheitsverweis. Abgeleitete Ma�einheit '{0}' verweist auf eine ung�ltige Einheit: '{1}'.

cube.derivedMeasure.resolve.error=Abgeleitete Ma�einheit '{0}' l�sen fehlgeschlagen.

cube.derivedMeasure.recursive.ref=Abgeleitete Ma�einheit '{0}' l�sen fehlgeschlagen, da R�ckbezug gefunden wurde unter: '{1}'.

timeFunction.CURRENT_QUARTER.name = Aktuelles Quartal

timeFunction.CURRENT_QUARTER.description = Angegebene Metrik f�r das aktuelle Quartal berechnen

timeFunction.CURRENT_MONTH.name = Aktueller Monat

timeFunction.CURRENT_MONTH.description = Angegebene Metrik f�r den aktuellen Monat berechnen

timeFunction.PREVIOUS_MONTH.name = Vorheriger N-Monat

timeFunction.PREVIOUS_MONTH.description = Angegebene Metrik f�r den vorherigen N-Monat berechnen

timeFunction.PREVIOUS_WEEK_TO_DATE.name = Vorherige N-Woche bis Datum

timeFunction.PREVIOUS_WEEK_TO_DATE.description = Angegebene Metrik f�r Woche bis Datum der vorherigen N-Woche berechnen

timeFunction.PREVIOUS_MONTH_TO_DATE.name = Vorheriger N-Monat bis Datum

timeFunction.PREVIOUS_MONTH_TO_DATE.description = Angegebene Metrik f�r Monat bis Datum des vorherigen N-Monats berechnen

timeFunction.PREVIOUS_QUARTER.name = Vorheriges N-Quartal

timeFunction.PREVIOUS_QUARTER.description = Angegebene Metrik f�r das vorherige N-Quartal berechnen

timeFunction.PREVIOUS_QUARTER_TO_DATE.name = Vorheriges N-Quartal bis Datum

timeFunction.PREVIOUS_QUARTER_TO_DATE.description = Angegebene Metrik f�r das vorherige N-Quartal berechnen

timeFunction.PREVIOUS_PREVIOUS_YEAR.name = Vorheriges N-Jahr

timeFunction.PREVIOUS_PREVIOUS_YEAR.description = Angegebene Metrik f�r das vorherige N-Jahr berechnen

timeFunction.TRAILING_30_DAYS.name = Nachgestellte 30�Tage

timeFunction.TRAILING_30_DAYS.description = Angegebene Metrik f�r die letzten 30 Tage berechnen

timeFunction.TRAILING_60_DAYS.name = Nachgestellte 60�Tage

timeFunction.TRAILING_60_DAYS.description = Angegebene Metrik f�r die letzten 60 Tage berechnen

timeFunction.TRAILING_90_DAYS.name = Nachgestellte 90�Tage

timeFunction.TRAILING_120_DAYS.name = Nachgestellte 120�Tage

timeFunction.TRAILING_90_DAYS.description = Angegebene Metrik f�r die letzten 90 Tage berechnen

timeFunction.TRAILING_120_DAYS.description = Angegebene Metrik f�r die letzten 120 Tage berechnen

timeFunction.TRAILING_12_MONTHS.name = Nachgestellte 12�Monate

timeFunction.TRAILING_12_MONTHS.description = Angegebene Metrik f�r die letzten 12 Monate berechnen

timeFunction.YEAR_TO_DATE.name = Jahr bis Datum (YTD)

timeFunction.YEAR_TO_DATE.description = Angegebene Metrik f�r das gleiche Jahr berechnen

timeFunction.QUARTER_TO_DATE.name = Quartal bis Datum (QTD)

timeFunction.QUARTER_TO_DATE.description = Angegebene Metrik f�r das gleiche Quartal berechnen

timeFunction.MONTH_TO_DATE.name = Monat bis Datum (MTD)

timeFunction.MONTH_TO_DATE.description = Angegebene Metrik f�r den gleichen Monat berechnen

timeFunction.PREVIOUS_YEAR_TO_DATE.name = Vorheriges N-Jahr bis Datum

timeFunction.PREVIOUS_YEAR_TO_DATE.description = Angegebene Metrik f�r das gleiche Jahr im vorherigen N-Jahr berechnen

timeFunction.WEEK_TO_DATE_LAST_YEAR.name = Woche bis Datum vorheriges Jahr

timeFunction.WEEK_TO_DATE_LAST_YEAR.description = Angegebene Metrik f�r die gleiche Woche im vorherigen N-Jahr berechnen

timeFunction.MONTH_TO_DATE_LAST_YEAR.name = Monat bis Datum vorheriges Jahr

timeFunction.MONTH_TO_DATE_LAST_YEAR.description = Angegebene Metrik f�r den gleichen Monat im vorherigen N-Jahr berechnen

timeFunction.QUARTER_TO_DATE_LAST_YEAR.name = Quartal bis Datum vorheriges Jahr

timeFunction.QUARTER_TO_DATE_LAST_YEAR.description = Angegebene Metrik f�r das gleiche Quartal im vorherigen N-Jahr berechnen

timeFunction.CURRENT_YEAR.name = Aktuelles Jahr

timeFunction.CURRENT_YEAR.description = Angegebene Metrik f�r das aktuelle Jahr berechnen

timeFunction.WEEK_TO_DATE.name = Woche bis Datum (WTD)

timeFunction.WEEK_TO_DATE.description = Angegebene Metrik f�r die gleiche Woche berechnen

timeFunction.CURRENT_PERIOD_FROM_N_PERIOD_AGO.name = Aktuelles Zeitintervall ab vor N-Zeitintervallen

timeFunction.CURRENT_PERIOD_FROM_N_PERIOD_AGO.description = Angegebene Metrik f�r das aktuelle Zeitintervall ab vor N-Zeitintervall berechnen

timeFunction.PERIOD_TO_DATE_FROM_N_PERIOD_AGO.name = Zeitintervall bis Datum ab vor N-Zeitintervallen

timeFunction.PERIOD_TO_DATE_FROM_N_PERIOD_AGO.description = Angegebene Metrik f�r das gleiche Intervall ab vor N-Zeitintervall berechnen

timeFunction.TRAILING_N_PERIOD_FROM_N_PERIOD_AGO.name = Nachgestellte N-Zeitintervalle ab vor N-Zeitintervallen

timeFunction.TRAILING_N_PERIOD_FROM_N_PERIOD_AGO.description = Angegebene Metrik f�r nachgestelltes N-Zeitintervall ab vor N-Zeitintervall berechnen

timeFunction.TRAILING_N_MONTHS.name = Nachgestellte N-Monate

timeFunction.TRAILING_N_MONTHS.description = Angegebene Metrik f�r die letzten N Monate berechnen

timeFunction.TRAILING_N_DAYS.name = Nachgestellte N-Tage

timeFunction.TRAILING_N_DAYS.description = Angegebene Metrik f�r die letzten N-Tage berechnen

timeFunction.NEXT_N_PERIODS.name = N�chste N Zeitintervalle

timeFunction.NEXT_N_PERIODS.description = Angegebene Metrik f�r die n�chsten N-Zeitintervalle berechnen

timeFunction.PERIOD1 = Das erste Zeitintervall-Argument f�r die Zeitfunktion

timeFunction.PERIOD2 = Das zweite Zeitintervall-Argument f�r die Zeitfunktion

timeFunction.N1 = N-Wert f�r das erste Zeitintervall

timeFunction.N2 = N-Wert f�r das zweite Zeitintervall

timeFunction.PERIOD1.displayName = Erstes Zeitinter&vall

timeFunction.PERIOD2.displayName = Zweites Zeitinte&rvall

timeFunction.N1.displayName = Anzahl (Zeitintervall) zur�ckliegend

timeFunction.N2.displayName = Vo&n

timeFunction.N1.next.displayName = &Weiter

timeFunction.N2.Ago.displayName=&Zur�ckliegend

timeFunction.N1.current.displayName=A&ktuelle Seite

timeFunction.N1.period.displayName= &Periode

timeFunction.trailing.N1.period.displayName=Nac&hgestellt

timeFunction.trailing.N1.Month.displayName= &Anzahl Monate nachgestellt

timeFunction.N1.Year.displayName = &Anzahl Jahre zur�ckliegend

timeFunction.N2.Year.displayName = &Anzahl Jahre zur�ckliegend

timeFunction.N1.Year = N-Wert f�r Anzahl Jahre zur�ckliegend

timeFunction.N2.Year = N-Wert f�r Anzahl Jahre zur�ckliegend

timeFunction.N1.Month.displayName = &Anzahl Monate zur�ckliegend

timeFunction.N2.Month.displayName = &Anzahl Monate zur�ckliegend

timeFunction.N1.Month = N-Wert f�r Anzahl Monate zur�ckliegend

timeFunction.N2.Month = N-Wert f�r Anzahl Monate zur�ckliegend

timeFunction.N1.Quarter.displayName = &Anzahl Quartale zur�ckliegend

timeFunction.N2.Quarter.displayName = &Anzahl Quartale zur�ckliegend

timeFunction.N1.Quarter = N-Wert f�r Anzahl Quartale zur�ckliegend

timeFunction.N2.Quarter = N-Wert f�r Anzahl Quartale zur�ckliegend

timeFunction.N1.Week.displayName = &Anzahl Wochen zur�ckliegend

timeFunction.N2.Week.displayName = &Anzahl Wochen zur�ckliegend

timeFunction.N1.Week = N-Wert f�r Anzahl Wochen zur�ckliegend

timeFunction.N2.Week = N-Wert f�r Anzahl Wochen zur�ckliegend

timeFunction.N1.Day.displayName = &Anzahl Tag(e) zur�ckliegend

timeFunction.PERIODCHOICE.YEAR_displayName =JAHR

timeFunction.PERIODCHOICE.QUARTER_displayName =QUARTAL

timeFunction.PERIODCHOICE.MONTH_displayName =MONAT

timeFunction.PERIODCHOICE.WEEK_displayName =WOCHE

timeFunction.PERIODCHOICE.DAY_displayName =TAG

timeFunction.PERIODCHOICE.PeriodToDate.YEAR_displayName =Jahr bis Datum

timeFunction.PERIODCHOICE.PeriodToDate.QUARTER_displayName =Quartal bis Datum

timeFunction.PERIODCHOICE.PeriodToDate.MONTH_displayName =Monat bis Datum

timeFunction.PERIODCHOICE.PeriodToDate.WEEK_displayName =Woche bis Datum

timeFunction.toolTip.to=Bis
RelativeTimePeriod.TimeLevelNotEnough=Das Berichtselement enth�lt nicht alle zeitlichen Ebenen f�r die Berechnung dieses relativen Zeitintervalls mit einem Bezugsdatum.
 
 
 
