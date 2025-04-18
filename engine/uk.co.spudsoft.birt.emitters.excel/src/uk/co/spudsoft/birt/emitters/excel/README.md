# Eclipse BIRT 
Introduction to use the specialized user properties of the ExcelEmitter.

## Reason
The ExelEmitter provides a set of specialized user properties to optimize the excel output according of the reporting based requirements.

Each of the user properties starts with the master prefix "ExcelEmitter".


### User properties of the ExcelEmitter

The following list get an overview of all supported user properties, the content and the definition of use.

**ExcelEmitter.DEBUG**

	Content   	activate the debug log during the excel file creation
	Location  	report
	Data type 	boolean
	Values	  	true, enable debug log
	          	false, disabled debug log
	Default   	false

**ExcelEmitter.AutoColWidthsIncludeTableFooter**

	Content   	define if the table footer row (only one footer row is supported) is included in the column width calculation.
	Location  	report
	Data type 	boolean
	Values    	true, the table footer row is included in the column width calculation
	           	false, the table footer row is ignored in the column width calculation
	Default   	false
	Since			4.19
	Designer  	4.19

**ExcelEmitter.AutoColWidthsIncludeTableHeader**

	Content   	define if the table header rows are included in the column width calculation.
	Location  	report
	Data type 	boolean
	Values    	true, the table header rows are included in the column width calculation
	           	false, the table header rows are ignored in the column width calculation
	Default   	false
	Since			4.19
	Designer  	4.19
	
	
**ExcelEmitter.AutoFilter**
	
	Content    	activate the auto-filter of excel
	Location   	report
	Data type  	boolean
	Values     	true, add the excel-filter on the first table header section on the last header row
	          	false, hide excel-filter
	Default    	false
	Designer  	4.17

**ExcelEmitter.BlankRowAfterTopLevelTable**

	Content   	option to add a blank row after the top level table
	Location  	table
	Data type  	boolean
	Values	    	true, add a blank row after a top level table
	          	false, no additional blank row
	Default    	false

**ExcelEmitter.CustomNumberFormat**

	Content   	define the number format of a numeric value for excel
	Location  	text-element of cell
	Data type  	string
	Values    	custom format which should be used to display the value on excel, e.g. "#,#00.00"
			    	the format use the form of the excel-defined forms (language version: en)
	Default   	empty (null)

**ExcelEmitter.DisplayGridlines**

	Content   	option to hide the excel grid
	Location   	report
	Data type  	boolean
	Values    	true, show grid lines on excel
	          	false, hide grid lines on excel
	Default   	true
	Designer  	4.17

**ExcelEmitter.DisableGrouping**

	Content   	option to disable the excel grouping	
	Location  	report
	Data type  	boolean
	Values    	true, hide the grouping section of excel
	          	false, show the grouping section of excel
	Default   	false
	Designer  	4.17

**ExcelEmitter.DisplayFormulas**

	Content   	display the formulas as text without calculation
	Location   	report, table, grid
	Data type  	boolean
	Values    	true, show formula as text 
	           	false, evaluate the content like formula
	Default    	false
	Relation   	ExcelEmitter.ValueAsFormula, ExcelEmitter.Formula

**ExcelEmitter.DisplayRowColHeadings**

	Content   	option to hide the row and column header labels
	Location  	table
	Data type   	boolean
	Values    	true, the column head and row line labels are shown on the excel sheet
	          	false, the column head and row line labels are hidden on the excel sheet
	Default   	true

**ExcelEmitter.DisplaySheetZoom**

	Content    	define the used scaling for the sheet zoom
	Location   	report, table, grid, list
	Data type  	number, integer
	Values    	the zoom value must be -1 (= off) or between 10 and 400
	Default    	-1
	Since      	4.16

**ExcelEmitter.DisplayZeros**

	Content   	option to display or hide zeros
	Location  	report, table, grid, list
	Data type  	boolean
	Values    	true, show cell value of zero
	          	false, hide cell value of zero
	Default   	true

**ExcelEmitter.DisplayTextIndent**

	Content    	define if the text-indent will be used based on the margin & padding of the text-element, the indent is dependent at the text-alignment:
	           	- alignment left: use the left-margin and left-padding
	           	- alignment right: use the right-margin and right-padding
	Location   	report, table, grid, list, row, text-element
	Data type  	boolean
	Values    	true, text-indent will be used
	           	false, avoid the usage of the text indent
	Default    	true
	Relation  	ExcelEmitter.TextIndentMode
	Since      	4.16

**ExcelEmitter.ForceAutoColWidths**

	Content   	define if the column width will be calculated through content-length or based on the column width
	Location  	report
	Data type 	boolean
	Values    	true, column width will be calculated through content-lengt (ignore the column width definition)
	           	false, the configured report column width will be used
	Default   	false
	Designer  	4.17

**ExcelEmitter.ForceRecalculation**

	Content    	define that excel shall perform a full recalculation when the workbook is opened
	Location   	report
	Data type  	boolean
	Values     	true, activate the recalculation option
	          	false, no recalculation
	Default    	false
	Since      	4.16
	Designer  	4.17

**ExcelEmitter.Formula**

	Content   	the content of this property will be added as excel-formula, for calculation the string must be start with "="-sign
	Location   	text-element of cell
	Data type  	string
	Values    	fixed text or formula for excel cell
	Default    	empty (null)
	Relation   	ExcelEmitter.DisplayFormulas, ExcelEmitter.ValueAsFormula
	Since      	4.16

**ExcelEmitter.FreezePanes**

	Content   	freeze excel rows
	Location   	row
	Data type  	boolean
	Values    	true, based on the marked row the row will be frozen on excel
	            	false, no frozen panes
	Default   	false

**ExcelEmitter.GroupSummaryHeader**

	Content   	flag indicating whether summary rows appear below detail in an outline, when applying an outline
	Location   	report, table
	Data type  	boolean
	Values    	true, a summary row is inserted below the detailed data being summarized and a new outline level is established on that row
	           	false, a summary row is inserted above the detailed data being summarized and a new outline level is established on that row.
	Default   	false

**ExcelEmitter.ImageScalingToCellDimension**

	Content    	scaling of all images to the cell dimension
	Location   	report
	Data type  	boolean
	Values    	true, all images will be scaled to the cell dimension
				 	false, only the images with larger dimensions like the content cell will be scaled
				 	and the small images keep the original image size
	Default    	false
	Since      	4.17
	Designer	4.17

**ExcelEmitter.InsertPrintBreakAfter**

	Content    	insert a page break after the marked row  
	Location  	row
	Data type  	boolean
	Values     	true, add page break after the marked row (= create new sheet)
	           	false, no additional page break, default behavior will be used
	Default    	false

**ExcelEmitter.NestedTableInLastCell**

	Content   	activate the special handling of nested tables of the last row-cell
	Location   	table, grid, list
	Data type  	boolean
	Values    	true, activate the nested table handling of the last cell of a row
	          	false, no nested table at last cell of row
	Default   	false

**ExcelEmitter.PrintPagesHigh**

	Content   	configuration of the page height for the excel print out
	Location   	report
	Data type  	number, short
	Values     	page height for the excel print out, other values disable the option
	Default   	-1
	Designer	4.17

**ExcelEmitter.PrintPagesWide**

	Content   	configuration of the page width for the excel print out
	Location   	report
	Data type  	number, short
	Values    	page width for the excel print out, other values disable the option
	Default   	-1,
	Designer	4.17

**ExcelEmitter.PagePreview**

	Content    	define the preview option of the excel sheet
	Location   	report, table, grid, list
	Data type  	string
	Values    	PageLayout, display the page layout preview
	           	PageBreak, display the page break preview
	Default    	Normal
	Since      	4.16

**ExcelEmitter.PrintFitToPage**

	Content    	the page will be fit to center of the print out
	Location   	report, table, grid, list
	Data type  	boolean
	Values     	true, fit the page to center
	          	false, no fitting of the page
	Default    	false
	Since      	4.16

**ExcelEmitter.PrintGridlines**

	Content    	activate the print out of the grind lines
	Location   	report, table, grid, list
	Data type  	boolean
	Values     	true, activate grid line print out
	          	false, without grid line print out
	Default    	false
	Since      	4.16

**ExcelEmitter.PrintRowColHeadings**

	Content    	activate the print out of the row and column heading labels
	Location   	report, table
	Data type  	boolean
	Values     	true, activate print out of the row and column heading labels
	          	false, without print out of the row and column heading labels
	Default    	false
	Since      	4.16

**ExcelEmitter.PrintScale**

	Content   	define the scaling for the print output of the excel file
	Location   	report
	Data type  	number, short
	Values    	the scale value must be -1 (= off) or between 10 and 400
	Default    	-1
	Designer	4.17

**ExcelEmitter.RemoveBlankRows**

	Content   	handling of blank rows
	Location  	report, table, grid, list, row
	Data type   	boolean
	Values	    	true, blank rows will be removed
					false, keep blank rows
	Default   	false

**ExcelEmitter.Rotation**

	Content		rotation of the element
	Location  	text-element of cell
	Data type 	number, float
	Values 		degree value for the rotation of the content
	Default		empty (null)

**ExcelEmitter.SheetProtectPassword**

	Content   	set a password to an excel sheet
	Location   	table, grid, list
	Data type  	string
	Values    	password to protect the excel file
	Default   	empty (null)

**ExcelEmitter.SingleSheet**

	Content    	the created excel will included all data into one excel sheet
	Location   	report
	Data type 	boolean
	Values     	true, all data will be displayed at one sheet (page breaks for new sheets will be ignored)
	           	false, use page breaks to create different sheets
	Default   	false
	Designer  	4.17

**ExcelEmitter.SingleSheetWithPageBreaks**

	Content    	the created excel will included all data into one excel sheet
	Location   	report
	Data type 	boolean
	Values    	true, all data will be displayed at one sheet (page breaks for new sheets will be ignored)
	          	false, use page breaks to create different sheets
	Default   	false
	Designer  	4.17

**ExcelEmitter.SpannedRowHeight**

	Content   	define the row height of spanned cells
	Location   	cell
	Data type  	number, float
	Values     	row height of spanned cells
	Default   	0

**ExcelEmitter.StreamingXlsx**

	Content    	define the technical output method DOM- or streaming-handling
	Location   	report
	Data type  	boolean
	Values     	true, activate the streaming output method
	          	false, standard output handling based on DOM will be used
	Default    	false
	Since      	4.13
	Designer	4.17
	
**ExcelEmitter.StructuredHeader**

	Content   	option to display the header and footer details on excel sheet level
	Location   	report
	Data type 	boolean
	Values    	true, the master page header will be display at first line and footer as last line of each sheet
	          	false, the master page header and footer will be displayed like excel header and footer
	Default   	false
	Designer	4.17

**ExcelEmitter.TemplateFile**

	Content   	define an excel-template to create the excel
	Location  	report
	Data type  	string
	Values    	full file path (path & filename) to an excel template which should be used for the excel creation
	Default    	empty (null)
	Designer	4.17

**ExcelEmitter.TextIndentMode**

	Content    	define the indent calculation mode and with it the element spacing which will be used
	Location   	report, table, grid, list, row, text-element
	Data type  	string
	Values    	SpacingCell, indent calculated based on cell padding
	           	SpacingElement, indent calculated based on element padding & margin
	           	SpacingAll, indent calculated based on cell padding & element padding & margin
	Default    	SpacingAll
	Relation  	ExcelEmitter.DisplayTextIndent
	Since      	4.16

**ExcelEmitter.ValueAsFormula**

	Content   	configuration to enable or disable the formula handling of a cell value
	Location  	text-element of cell
	Data type  	boolean
	Values    	true, use content like formula
	           	false, use content like text
	Default   	false
	Relation   	ExcelEmitter.DisplayFormulas, ExcelEmitter.Formula
	Since      	4.16
