/*******************************************************************************
 * Copyright (c) 2004 Actuate Corporation.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * https://www.eclipse.org/legal/epl-2.0/.
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 ******************************************************************************/

package org.eclipse.birt.report.tests.chart.regression;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GridLayout;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ComponentEvent;
import java.awt.event.ComponentListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferedImage;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import org.eclipse.birt.chart.device.ICallBackNotifier;
import org.eclipse.birt.chart.device.IDeviceRenderer;
import org.eclipse.birt.chart.exception.ChartException;
import org.eclipse.birt.chart.extension.datafeed.StockEntry;
import org.eclipse.birt.chart.factory.GeneratedChartState;
import org.eclipse.birt.chart.factory.Generator;
import org.eclipse.birt.chart.model.Chart;
import org.eclipse.birt.chart.model.ChartWithAxes;
import org.eclipse.birt.chart.model.attribute.ActionType;
import org.eclipse.birt.chart.model.attribute.AxisType;
import org.eclipse.birt.chart.model.attribute.Bounds;
import org.eclipse.birt.chart.model.attribute.CallBackValue;
import org.eclipse.birt.chart.model.attribute.IntersectionType;
import org.eclipse.birt.chart.model.attribute.LineStyle;
import org.eclipse.birt.chart.model.attribute.Position;
import org.eclipse.birt.chart.model.attribute.TickStyle;
import org.eclipse.birt.chart.model.attribute.TriggerCondition;
import org.eclipse.birt.chart.model.attribute.impl.BoundsImpl;
import org.eclipse.birt.chart.model.attribute.impl.ColorDefinitionImpl;
import org.eclipse.birt.chart.model.attribute.impl.GradientImpl;
import org.eclipse.birt.chart.model.attribute.impl.TooltipValueImpl;
import org.eclipse.birt.chart.model.component.Axis;
import org.eclipse.birt.chart.model.component.Series;
import org.eclipse.birt.chart.model.component.impl.CurveFittingImpl;
import org.eclipse.birt.chart.model.component.impl.SeriesImpl;
import org.eclipse.birt.chart.model.data.DateTimeDataSet;
import org.eclipse.birt.chart.model.data.SeriesDefinition;
import org.eclipse.birt.chart.model.data.StockDataSet;
import org.eclipse.birt.chart.model.data.impl.ActionImpl;
import org.eclipse.birt.chart.model.data.impl.DateTimeDataSetImpl;
import org.eclipse.birt.chart.model.data.impl.NumberDataElementImpl;
import org.eclipse.birt.chart.model.data.impl.SeriesDefinitionImpl;
import org.eclipse.birt.chart.model.data.impl.StockDataSetImpl;
import org.eclipse.birt.chart.model.data.impl.TriggerImpl;
import org.eclipse.birt.chart.model.impl.ChartWithAxesImpl;
import org.eclipse.birt.chart.model.layout.TitleBlock;
import org.eclipse.birt.chart.model.type.StockSeries;
import org.eclipse.birt.chart.model.type.impl.StockSeriesImpl;
import org.eclipse.birt.chart.util.CDateTime;
import org.eclipse.birt.chart.util.PluginSettings;
import org.eclipse.birt.core.exception.BirtException;

import com.ibm.icu.util.Calendar;

/**
 * Regression description:
 * </p>
 * Meter chart can not support interactivity-ShowTooltip
 * </p>
 * Test description:
 * </p>
 * Meter chart can support interactivity-ShowTooltip
 * </p>
 */

public final class Regression_116619_swing extends JPanel implements ICallBackNotifier, ComponentListener {

	private static final long serialVersionUID = 1L;

	private boolean bNeedsGeneration = true;

	private GeneratedChartState gcs = null;

	private Chart cm = null;

	private IDeviceRenderer idr = null;

	private BufferedImage bi = null;

	private Map contextMap;

	/**
	 * Contructs the layout with a container for displaying chart and a control
	 * panel for selecting interactivity.
	 *
	 * @param args
	 */
	public static void main(String[] args) {
		final Regression_116619_swing siv = new Regression_116619_swing();

		JFrame jf = new JFrame();
		jf.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		jf.addComponentListener(siv);

		Container co = jf.getContentPane();
		co.setLayout(new BorderLayout());
		co.add(siv, BorderLayout.CENTER);

		Dimension dScreen = Toolkit.getDefaultToolkit().getScreenSize();
		Dimension dApp = new Dimension(600, 400);
		jf.setSize(dApp);
		jf.setLocation((dScreen.width - dApp.width) / 2, (dScreen.height - dApp.height) / 2);

		jf.setTitle(siv.getClass().getName() + " [device=" //$NON-NLS-1$
				+ siv.idr.getClass().getName() + "]");//$NON-NLS-1$

		ControlPanel cp = siv.new ControlPanel(siv);
		co.add(cp, BorderLayout.SOUTH);

		siv.idr.setProperty(IDeviceRenderer.UPDATE_NOTIFIER, siv);

		jf.addWindowListener(new WindowAdapter() {

			@Override
			public void windowClosing(WindowEvent e) {
				siv.idr.dispose();
			}

		});

		jf.setVisible(true);
	}

	/**
	 * Get the connection with SWING device to render the graphics.
	 */
	Regression_116619_swing() {
		contextMap = new HashMap();

		final PluginSettings ps = PluginSettings.instance();
		try {
			idr = ps.getDevice("dv.SWING");//$NON-NLS-1$
		} catch (ChartException ex) {
			ex.printStackTrace();
		}
		cm = showTooltip_StockChart();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.eclipse.birt.chart.device.swing.IUpdateNotifier#update()
	 */
	@Override
	public void regenerateChart() {
		bNeedsGeneration = true;
		updateBuffer();
		repaint();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.eclipse.birt.chart.device.swing.IUpdateNotifier#update()
	 */
	@Override
	public void repaintChart() {
		repaint();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.eclipse.birt.chart.device.swing.IUpdateNotifier#peerInstance()
	 */
	@Override
	public Object peerInstance() {
		return this;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.eclipse.birt.chart.device.swing.IUpdateNotifier#getDesignTimeModel()
	 */
	@Override
	public Chart getDesignTimeModel() {
		return cm;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see org.eclipse.birt.chart.device.swing.IUpdateNotifier#getRunTimeModel()
	 */
	@Override
	public Chart getRunTimeModel() {
		return gcs.getChartModel();
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * org.eclipse.birt.chart.device.IUpdateNotifier#getContext(java.lang.Object)
	 */
	public Object getContext(Object key) {
		return contextMap.get(key);
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * org.eclipse.birt.chart.device.IUpdateNotifier#putContext(java.lang.Object,
	 * java.lang.Object)
	 */
	public Object putContext(Object key, Object value) {
		return contextMap.put(key, value);
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see
	 * org.eclipse.birt.chart.device.IUpdateNotifier#removeContext(java.lang.Object)
	 */
	public Object removeContext(Object key) {
		return contextMap.remove(key);
	}

	public void updateBuffer() {
		Dimension d = getSize();

		if (bi == null || bi.getWidth() != d.width || bi.getHeight() != d.height) {
			bi = new BufferedImage(d.width, d.height, BufferedImage.TYPE_INT_ARGB);
		}

		Graphics2D g2d = (Graphics2D) bi.getGraphics();

		idr.setProperty(IDeviceRenderer.GRAPHICS_CONTEXT, g2d);
		Bounds bo = BoundsImpl.create(0, 0, d.width, d.height);
		bo.scale(72d / idr.getDisplayServer().getDpiResolution()); // BOUNDS
		// MUST
		// BE
		// SPECIFIED
		// IN
		// POINTS

		Generator gr = Generator.instance();
		if (bNeedsGeneration) {
			bNeedsGeneration = false;
			try {
				gcs = gr.build(idr.getDisplayServer(), cm, bo, null, null, null);
			} catch (ChartException ex) {
				showException(g2d, ex);
			}
		}

		try {
			gr.render(idr, gcs);
		} catch (ChartException rex) {
			showException(g2d, rex);
		} finally {
			g2d.dispose();
		}

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see javax.swing.JComponent#paint(java.awt.Graphics)
	 */
	@Override
	public void paint(Graphics g) {
		super.paint(g);

		if (bi == null) {
			updateBuffer();
		}

		g.drawImage(bi, 0, 0, this);
	}

	/**
	 * Presents the Exceptions if the chart cannot be displayed properly.
	 *
	 * @param g2d
	 * @param ex
	 */
	private void showException(Graphics2D g2d, Exception ex) {
		String sWrappedException = ex.getClass().getName();
		Throwable th = ex;
		while (ex.getCause() != null) {
			ex = (Exception) ex.getCause();
		}
		String sException = ex.getClass().getName();
		if (sWrappedException.equals(sException)) {
			sWrappedException = null;
		}

		String sMessage = null;
		if (th instanceof BirtException) {
			sMessage = ((BirtException) th).getLocalizedMessage();
		} else {
			sMessage = ex.getMessage();
		}

		if (sMessage == null) {
			sMessage = "<null>";//$NON-NLS-1$
		}

		StackTraceElement[] stea = ex.getStackTrace();
		Dimension d = getSize();

		Font fo = new Font("Monospaced", Font.BOLD, 14);//$NON-NLS-1$
		g2d.setFont(fo);
		FontMetrics fm = g2d.getFontMetrics();
		g2d.setColor(Color.WHITE);
		g2d.fillRect(20, 20, d.width - 40, d.height - 40);
		g2d.setColor(Color.BLACK);
		g2d.drawRect(20, 20, d.width - 40, d.height - 40);
		g2d.setClip(20, 20, d.width - 40, d.height - 40);
		int x = 25, y = 20 + fm.getHeight();
		g2d.drawString("Exception:", x, y);//$NON-NLS-1$
		x += fm.stringWidth("Exception:") + 5;//$NON-NLS-1$
		g2d.setColor(Color.RED);
		g2d.drawString(sException, x, y);
		x = 25;
		y += fm.getHeight();
		if (sWrappedException != null) {
			g2d.setColor(Color.BLACK);
			g2d.drawString("Wrapped In:", x, y);//$NON-NLS-1$
			x += fm.stringWidth("Wrapped In:") + 5;//$NON-NLS-1$
			g2d.setColor(Color.RED);
			g2d.drawString(sWrappedException, x, y);
			x = 25;
			y += fm.getHeight();
		}
		g2d.setColor(Color.BLACK);
		y += 10;
		g2d.drawString("Message:", x, y);//$NON-NLS-1$
		x += fm.stringWidth("Message:") + 5;//$NON-NLS-1$
		g2d.setColor(Color.BLUE);
		g2d.drawString(sMessage, x, y);
		x = 25;
		y += fm.getHeight();
		g2d.setColor(Color.BLACK);
		y += 10;
		g2d.drawString("Trace:", x, y);//$NON-NLS-1$
		x = 40;
		y += fm.getHeight();
		g2d.setColor(Color.GREEN.darker());
		for (int i = 0; i < stea.length; i++) {
			g2d.drawString(stea[i].getClassName() + ":"//$NON-NLS-1$
					+ stea[i].getMethodName() + "(...):"//$NON-NLS-1$
					+ stea[i].getLineNumber(), x, y);
			x = 40;
			y += fm.getHeight();
		}
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see java.awt.event.ComponentListener#componentHidden(java.awt.event.
	 * ComponentEvent)
	 */
	@Override
	public void componentHidden(ComponentEvent e) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see java.awt.event.ComponentListener#componentMoved(java.awt.event.
	 * ComponentEvent)
	 */
	@Override
	public void componentMoved(ComponentEvent e) {
		// TODO Auto-generated method stub

	}

	/*
	 * (non-Javadoc)
	 *
	 * @see java.awt.event.ComponentListener#componentResized(java.awt.event.
	 * ComponentEvent)
	 */
	@Override
	public void componentResized(ComponentEvent e) {
		bNeedsGeneration = true;
	}

	/*
	 * (non-Javadoc)
	 *
	 * @see java.awt.event.ComponentListener#componentShown(java.awt.event.
	 * ComponentEvent)
	 */
	@Override
	public void componentShown(ComponentEvent e) {
		// TODO Auto-generated method stub

	}

	/**
	 * An inner class Control Panel, which provides the interactive interface with
	 * the user.
	 */
	private final class ControlPanel extends JPanel implements ActionListener {

		private static final long serialVersionUID = 1L;
		private final Regression_116619_swing siv;

		ControlPanel(Regression_116619_swing siv) {
			this.siv = siv;

			setLayout(new GridLayout(0, 1, 0, 0));

			JPanel jp = new JPanel();
			jp.setLayout(new FlowLayout(FlowLayout.LEFT, 3, 3));

			add(jp);
		}

		/*
		 * (non-Javadoc)
		 *
		 * @see
		 * java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent)
		 */
		@Override
		public void actionPerformed(ActionEvent e) {
			cm = showTooltip_StockChart();
			bNeedsGeneration = true;
			siv.updateBuffer();
			siv.repaint();
		}
	}

	@Override
	public void callback(Object event, Object source, CallBackValue value) {
		JOptionPane.showMessageDialog(Regression_116619_swing.this, value.getIdentifier());
	}

	/**
	 * Creates a bar chart model as a reference implementation
	 *
	 * @return An instance of the simulated runtime chart model (containing filled
	 *         datasets)
	 */

	public static Chart showTooltip_StockChart() {
		ChartWithAxes cwaStock = ChartWithAxesImpl.create();

		// Title
		cwaStock.getTitle().getLabel().getCaption().setValue("Stock Chart");//$NON-NLS-1$
		TitleBlock tb = cwaStock.getTitle();
		tb.setBackground(GradientImpl.create(ColorDefinitionImpl.create(0, 128, 0),
				ColorDefinitionImpl.create(128, 0, 0), 0, false));
		tb.getLabel().getCaption().setColor(ColorDefinitionImpl.WHITE());

		// Plot
		cwaStock.getBlock().setBackground(
				GradientImpl.create(ColorDefinitionImpl.create(196, 196, 196), ColorDefinitionImpl.WHITE(), 90, false));
		cwaStock.getPlot().getClientArea().getInsets().set(10, 10, 10, 10);

		// Legend
		cwaStock.getLegend().setBackground(ColorDefinitionImpl.ORANGE());

		// X-Axis
		Axis xAxisPrimary = ((ChartWithAxesImpl) cwaStock).getPrimaryBaseAxes()[0];

		xAxisPrimary.getTitle().getCaption().setValue("X Axis");//$NON-NLS-1$
		xAxisPrimary.getTitle().getCaption().setColor(ColorDefinitionImpl.RED());
		xAxisPrimary.getTitle().getCaption().setValue("Date");//$NON-NLS-1$
		xAxisPrimary.setTitlePosition(Position.ABOVE_LITERAL);

		xAxisPrimary.getLabel().getCaption().setColor(ColorDefinitionImpl.RED());
		xAxisPrimary.getLabel().getCaption().getFont().setRotation(65);
		xAxisPrimary.setLabelPosition(Position.ABOVE_LITERAL);

		xAxisPrimary.setType(AxisType.DATE_TIME_LITERAL);
		xAxisPrimary.getOrigin().setType(IntersectionType.MAX_LITERAL);

		xAxisPrimary.getMajorGrid().setTickStyle(TickStyle.ABOVE_LITERAL);
		xAxisPrimary.getMajorGrid().getLineAttributes().setColor(ColorDefinitionImpl.create(255, 196, 196));
		xAxisPrimary.getMajorGrid().getLineAttributes().setStyle(LineStyle.DOTTED_LITERAL);
		xAxisPrimary.getMajorGrid().getLineAttributes().setVisible(true);

		xAxisPrimary.setCategoryAxis(true);

		// Y-Axis
		Axis yAxisPrimary = ((ChartWithAxesImpl) cwaStock).getPrimaryOrthogonalAxis(xAxisPrimary);

		yAxisPrimary.getLabel().getCaption().setValue("Price Axis");//$NON-NLS-1$
		yAxisPrimary.getLabel().getCaption().setColor(ColorDefinitionImpl.BLUE());
		yAxisPrimary.setLabelPosition(Position.LEFT_LITERAL);

		yAxisPrimary.getTitle().getCaption().setValue("Microsoft ($ Stock Price)");//$NON-NLS-1$
		yAxisPrimary.getTitle().getCaption().setColor(ColorDefinitionImpl.BLUE());
		yAxisPrimary.setTitlePosition(Position.LEFT_LITERAL);

		yAxisPrimary.getScale().setMin(NumberDataElementImpl.create(24.5));
		yAxisPrimary.getScale().setMax(NumberDataElementImpl.create(27.5));
		yAxisPrimary.getScale().setStep(0.5);

		yAxisPrimary.getMajorGrid().getLineAttributes().setColor(ColorDefinitionImpl.create(196, 196, 255));
		yAxisPrimary.getMajorGrid().getLineAttributes().setStyle(LineStyle.DOTTED_LITERAL);
		yAxisPrimary.getMajorGrid().getLineAttributes().setVisible(true);
		yAxisPrimary.getMajorGrid().setTickStyle(TickStyle.LEFT_LITERAL);

		yAxisPrimary.setType(AxisType.LINEAR_LITERAL);
		yAxisPrimary.getOrigin().setType(IntersectionType.MIN_LITERAL);

		// Data Set
		DateTimeDataSet dsDateValues = DateTimeDataSetImpl
				.create(new Calendar[] { new CDateTime(2004, 12, 27), new CDateTime(2004, 12, 23),
						new CDateTime(2004, 12, 22), new CDateTime(2004, 12, 21), new CDateTime(2004, 12, 20),
						new CDateTime(2004, 12, 17), new CDateTime(2004, 12, 16), new CDateTime(2004, 12, 15) });

		StockDataSet dsStockValues = StockDataSetImpl.create(new StockEntry[] {
				new StockEntry(27.01, 27.10, 26.82, 26.85), new StockEntry(26.87, 27.15, 26.83, 27.01),
				new StockEntry(26.84, 27.15, 26.78, 26.97), new StockEntry(27.00, 27.17, 26.94, 27.07),
				new StockEntry(27.01, 27.15, 26.89, 26.95), new StockEntry(27.00, 27.32, 26.80, 26.96),
				new StockEntry(27.15, 27.28, 27.01, 27.16), new StockEntry(27.22, 27.40, 27.07, 27.11), });

		// X-Series
		Series seBase = SeriesImpl.create();
		seBase.setDataSet(dsDateValues);

		SeriesDefinition sdX = SeriesDefinitionImpl.create();
		sdX.getSeriesPalette().update(1);
		xAxisPrimary.getSeriesDefinitions().add(sdX);
		sdX.getSeries().add(seBase);

		// Y-Series
		StockSeries ss = (StockSeries) StockSeriesImpl.create();
		ss.setSeriesIdentifier("Stock Price");//$NON-NLS-1$
		ss.getLineAttributes().setColor(ColorDefinitionImpl.BLUE());
		ss.setDataSet(dsStockValues);
		ss.setCurveFitting(CurveFittingImpl.create());
		ss.getTriggers().add(TriggerImpl.create(TriggerCondition.ONMOUSEOVER_LITERAL,
				ActionImpl.create(ActionType.SHOW_TOOLTIP_LITERAL, TooltipValueImpl.create(500, null))));

		SeriesDefinition sdY = SeriesDefinitionImpl.create();
		sdY.getSeriesPalette().update(ColorDefinitionImpl.CYAN());
		yAxisPrimary.getSeriesDefinitions().add(sdY);
		sdY.getSeries().add(ss);

		return cwaStock;
	}
}
