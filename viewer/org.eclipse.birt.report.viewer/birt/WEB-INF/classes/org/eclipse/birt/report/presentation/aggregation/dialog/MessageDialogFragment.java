/*******************************************************************************
 * Copyright (c) 2025 Thomas Gutmann.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * https://www.eclipse.org/legal/epl-2.0/.
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 *
 * Contributors:
 *  Thomas Gutmann  - initial API and implementation
 *******************************************************************************/

package org.eclipse.birt.report.presentation.aggregation.dialog;

import org.eclipse.birt.report.resource.BirtResources;
import org.eclipse.birt.report.resource.ResourceConstants;

/**
 * Fragment for report tool bar.
 * <p>
 *
 * @see BaseDialogFragment
 */
public class MessageDialogFragment extends BaseDialogFragment {

	/**
	 * Get unique id of the corresponding UI gesture.
	 *
	 * @return id
	 */
	@Override
	public String getClientId() {
		return "messageDialog"; //$NON-NLS-1$
	}

	/**
	 * Get name of the corresponding UI gesture.
	 *
	 * @return id
	 */
	@Override
	public String getClientName() {
		return "Message"; //$NON-NLS-1$
	}

	/**
	 * Gets the title ID for the html page.
	 *
	 * @return title id
	 */

	@Override
	public String getTitle() {
		return BirtResources.getMessage(ResourceConstants.MESSAGE_DIALOG_TITLE);
	}
}
