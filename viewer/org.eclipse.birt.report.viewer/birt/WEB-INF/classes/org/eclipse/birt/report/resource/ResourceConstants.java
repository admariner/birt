/*******************************************************************************
 * Copyright (c) 2004, 2025 Actuate Corporation and others
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * https://www.eclipse.org/legal/epl-2.0/.
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 *
 * Contributors:
 *  Actuate Corporation  - initial API and implementation
 *******************************************************************************/

package org.eclipse.birt.report.resource;

/**
 * Constant values of resource labels
 *
 * @since 3.3
 *
 */
public interface ResourceConstants {

	// dialog title
	String EXCEPTION_DIALOG_TITLE = "birt.viewer.dialog.exception.title"; //$NON-NLS-1$
	String EXPORT_REPORT_DIALOG_TITLE = "birt.viewer.dialog.exportReport.title"; //$NON-NLS-1$
	String PARAMETER_DIALOG_TITLE = "birt.viewer.dialog.parameter.title"; //$NON-NLS-1$
	String SIMPLE_EXPORT_DATA_DIALOG_TITLE = "birt.viewer.dialog.simpleExportData.title"; //$NON-NLS-1$
	String PRINT_REPORTSERVER_DIALOG_TITLE = "birt.viewer.dialog.printReportServer.title"; //$NON-NLS-1$
	String PRINT_REPORT_DIALOG_TITLE = "birt.viewer.dialog.printReport.title"; //$NON-NLS-1$
	String CONFIRMATION_DIALOG_TITLE = "birt.viewer.dialog.confirmation.title"; //$NON-NLS-1$
	String MESSAGE_DIALOG_TITLE = "birt.viewer.dialog.message.title"; //$NON-NLS-1$

	/**
	 * Page title for the "web viewer", "html" preview.
	 */
	String BIRT_VIEWER_TITLE = "birt.viewer.title"; //$NON-NLS-1$

	// errors
	String GENERAL_ERROR_PARAMETER_INVALID = "birt.viewer.error.parameter.invalid"; //$NON-NLS-1$
	String GENERAL_ERROR_PARAMETER_NOTBLANK = "birt.viewer.error.parameternotallowblank"; //$NON-NLS-1$
	String GENERAL_ERROR_NO_VIEWING_SESSION = "birt.viewer.error.noviewingsession"; //$NON-NLS-1$
	String GENERAL_ERROR_VIEWING_SESSION_EXPIRED = "birt.viewer.error.viewingsessionexpired"; //$NON-NLS-1$
	String GENERAL_ERROR_VIEWING_SESSION_LOCKED = "birt.viewer.error.viewingsessionlocked"; //$NON-NLS-1$
	String GENERAL_ERROR_VIEWING_SESSION_MAX_REACHED = "birt.viewer.error.viewingsessionmaxreached"; //$NON-NLS-1$
	String ERROR_STACK_TRACE_COPY = "birt.viewer.error.stacktrace.copy"; //$NON-NLS-1$
	String ERROR_STACK_TRACE_COPIED = "birt.viewer.error.stacktrace.copy.done"; //$NON-NLS-1$
	String ERROR_INVALID_EXTENSION_FOR_DOCUMENT_PARAMETER = "birt.viewer.error.invalidextfordocumentparam"; //$NON-NLS-1$

	// general exception
	String GENERAL_EXCEPTION_DOCUMENT_FILE_ERROR = "birt.viewer.generalException.DOCUMENT_FILE_ERROR"; //$NON-NLS-1$
	String GENERAL_EXCEPTION_DOCUMENT_ACCESS_ERROR = "birt.viewer.generalException.DOCUMENT_ACCESS_ERROR"; //$NON-NLS-1$
	String GENERAL_EXCEPTION_REPORT_FILE_ERROR = "birt.viewer.generalException.REPORT_FILE_ERROR"; //$NON-NLS-1$
	String GENERAL_EXCEPTION_REPORT_ACCESS_ERROR = "birt.viewer.generalException.REPORT_ACCESS_ERROR"; //$NON-NLS-1$
	String GENERAL_EXCEPTION_DOCUMENT_FILE_PROCESSING = "birt.viewer.generalException.DOCUMENT_FILE_PROCESSING"; //$NON-NLS-1$
	String GENERAL_EXCEPTION_NO_REPORT_DESIGN = "birt.viewer.generalException.NO_REPORT_DESIGN"; //$NON-NLS-1$
	String GENERAL_EXCEPTION_MULTIPLE_EXCEPTIONS = "birt.viewer.generalException.MULTIPLE_EXCEPTIONS"; //$NON-NLS-1$

	// report service exception
	String REPORT_SERVICE_EXCEPTION_EXTRACT_DATA_NO_DOCUMENT = "birt.viewer.reportServiceException.EXTRACT_DATA_NO_DOCUMENT"; //$NON-NLS-1$
	String REPORT_SERVICE_EXCEPTION_EXTRACT_DATA_NO_RESULT_SET = "birt.viewer.reportServiceException.EXTRACT_DATA_NO_RESULT_SET"; //$NON-NLS-1$
	String REPORT_SERVICE_EXCEPTION_INVALID_TOC = "birt.viewer.reportServiceException.INVALID_TOC"; //$NON-NLS-1$
	String REPORT_SERVICE_EXCEPTION_INVALID_PARAMETER = "birt.viewer.reportServiceException.INVALID_PARAMETER"; //$NON-NLS-1$
	String REPORT_SERVICE_EXCEPTION_STARTUP_REPORTENGINE_ERROR = "birt.viewer.reportServiceException.STARTUP_REPORTENGINE_ERROR"; //$NON-NLS-1$

	// data extraction exception
	String REPORT_SERVICE_EXCEPTION_INVALID_EXTRACTFORMAT = "birt.viewer.reportServiceException.INVALID_EXTRACTFORMAT"; //$NON-NLS-1$
	String REPORT_SERVICE_EXCEPTION_INVALID_EXTRACTEXTENSION = "birt.viewer.reportServiceException.INVALID_EXTRACTEXTENSION"; //$NON-NLS-1$

	// birt action exception
	String ACTION_EXCEPTION_NO_REPORT_DOCUMENT = "birt.viewer.actionException.NO_REPORT_DOCUMENT"; //$NON-NLS-1$
	String ACTION_EXCEPTION_INVALID_BOOKMARK = "birt.viewer.actionException.INVALID_BOOKMARK"; //$NON-NLS-1$
	String ACTION_EXCEPTION_INVALID_PAGE_NUMBER = "birt.viewer.actionException.INVALID_PAGE_NUMBER"; //$NON-NLS-1$
	String ACTION_EXCEPTION_PAGE_NUMBER_PARSE_ERROR = "birt.viewer.actionException.PAGE_NUMBER_PARSE_ERROR"; //$NON-NLS-1$
	String ACTION_EXCEPTION_INVALID_ID_FORMAT = "birt.viewer.actionException.INVALID_ID_FORMAT"; //$NON-NLS-1$
	String ACTION_EXCEPTION_DOCUMENT_FILE_NO_EXIST = "birt.viewer.actionException.DOCUMENT_FILE_NO_EXIST"; //$NON-NLS-1$

	// birt soap binding exception
	String SOAP_BINDING_EXCEPTION_NO_HANDLER_FOR_TARGET = "birt.viewer.soapBindingException.NO_HANDLER_FOR_TARGET"; //$NON-NLS-1$

	// component processor exception
	String COMPONENT_PROCESSOR_EXCEPTION_MISSING_OPERATOR = "birt.viewer.componentProcessorException.MISSING_OPERATOR"; //$NON-NLS-1$

	// stack trace title
	String EXCEPTION_DIALOG_STACK_TRACE = "birt.viewer.exceptionDialog.stackTrace"; //$NON-NLS-1$
	String EXCEPTION_DIALOG_SHOW_STACK_TRACE = "birt.viewer.exceptionDialog.showStackTrace"; //$NON-NLS-1$
	String EXCEPTION_DIALOG_HIDE_STACK_TRACE = "birt.viewer.exceptionDialog.hideStackTrace"; //$NON-NLS-1$

	// viewer taglib excepton
	String TAGLIB_NO_ATTR_ID = "birt.viewer.taglib.NO_ATTR_ID"; //$NON-NLS-1$
	String TAGLIB_INVALID_ATTR_ID = "birt.viewer.taglib.INVALID_ATTR_ID"; //$NON-NLS-1$
	String TAGLIB_ATTR_ID_DUPLICATE = "birt.viewer.taglib.ATTR_ID_DUPLICATE"; //$NON-NLS-1$
	String TAGLIB_PARAM_NAME_DUPLICATE = "birt.viewer.taglib.PARAM_NAME_DUPLICATE"; //$NON-NLS-1$
	String TAGLIB_NO_REPORT_SOURCE = "birt.viewer.taglib.NO_REPORT_SOURCE"; //$NON-NLS-1$
	String TAGLIB_NO_REPORT_DOCUMENT = "birt.viewer.taglib.NO_REPORT_DOCUMENT"; //$NON-NLS-1$
	String TAGLIB_NO_REQUESTER_NAME = "birt.viewer.taglib.NO_REQUESTER_NAME"; //$NON-NLS-1$

	// birt general exception
	String EXCEPTION_MAYBE_DISABLED_COOKIES = "birt.viewer.exception.maybe_disabled_cookies"; //$NON-NLS-1$

}
