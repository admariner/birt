/*******************************************************************************
 * Copyright (c) 2021 Contributors to the Eclipse Foundation
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * https://www.eclipse.org/legal/epl-2.0/.
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *   See git history
 *******************************************************************************/
/* Generated By:JJTree: Do not edit this line. ASTText.java */

package org.eclipse.birt.core.template;

public class ASTText extends SimpleNode {
	public ASTText(int id) {
		super(id);
	}

	public ASTText(Parser p, int id) {
		super(p, id);
	}

	/** Accept the visitor. **/
	@Override
	public Object jjtAccept(ParserVisitor visitor, Object data) {
		return visitor.visit(this, data);
	}

	protected StringBuffer content = new StringBuffer();

	public void appendContent(String content) {
		this.content.append(content);
	}

	public String getContent() {
		return content.toString();
	}
}
