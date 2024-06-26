/*******************************************************************************
 * Copyright (c) 2004 Actuate Corporation.
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

package org.eclipse.birt.report.designer.internal.ui.dnd;

/**
 *
 */

public interface IDropAdapter {

	/**
	 * Validate the tranfer object can be droped to traget with special operation
	 * and location.
	 *
	 * @param transfer
	 * @param target
	 * @param operation
	 * @param location
	 * @return
	 */
	int canDrop(Object transfer, Object target, int operation, DNDLocation location);

	/**
	 * Perform the drop operation.
	 *
	 * @param transfer
	 * @param target
	 * @param operation
	 * @param location
	 * @return
	 */
	boolean performDrop(Object transfer, Object target, int operation, DNDLocation location);
}
