package com.pjt.common.utils;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.DirectColorModel;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.awt.image.RGBImageFilter;
import java.util.regex.Pattern;

import javax.swing.ImageIcon;

public class PictureUtil {

	public static BufferedImage convertImage(BufferedImage image) {
		ImageIcon imageIcon = new ImageIcon(image);
		BufferedImage bufferedImage = new BufferedImage(
				imageIcon.getIconWidth(), imageIcon.getIconHeight(),
				BufferedImage.TYPE_4BYTE_ABGR);
		Graphics2D g2D = (Graphics2D) bufferedImage.getGraphics();
		g2D.drawImage(imageIcon.getImage(), 0, 0, imageIcon.getImageObserver());
		int alpha = 0;
		for (int j1 = bufferedImage.getMinY(); j1 < bufferedImage.getHeight(); j1++) {
			for (int j2 = bufferedImage.getMinX(); j2 < bufferedImage
					.getWidth(); j2++) {
				int rgb = bufferedImage.getRGB(j2, j1);
				if (colorInRange(rgb))
					alpha = 0;
				else
					alpha = 255;
				rgb = (alpha << 24) | (rgb & 0x00ffffff);
				bufferedImage.setRGB(j2, j1, rgb);
			}
		}
		g2D.drawImage(bufferedImage, 0, 0, imageIcon.getImageObserver());

		return bufferedImage;
	}

	public static BufferedImage mergeImage(BufferedImage image,BufferedImage imageBiao,double left,double top) throws Exception{
		Graphics2D g = image.createGraphics();
		// g.setColor(Color.YELLOW);
		// g.setFont(new Font("华文中宋", Font.LAYOUT_LEFT_TO_RIGHT, 48));
		// g.drawString("图像合成示例",100, image.getHeight() - 400);
		// 写入图标
		ImageFilter imgf = new MyFilter(255);
		FilteredImageSource fis = new FilteredImageSource(
				imageBiao.getSource(), imgf);
		Image im = Toolkit.getDefaultToolkit().createImage(fis);
		g.drawImage(im, (int)left+10, (int)top+10, imageBiao.getWidth(null),
				imageBiao.getHeight(null), null);
		g.dispose();
		return image;
//		FileOutputStream out = new FileOutputStream(fname);
//		ImageIO.write(image, "png", out);
//        out.close();
		// JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
		// encoder.encode(image);
//		out.close();
	}

	// public static void convert(String path) {
	// try {
	// BufferedImage image = ImageIO.read(new File(path));
	// ImageIcon imageIcon = new ImageIcon(image);
	// BufferedImage bufferedImage = new BufferedImage(
	// imageIcon.getIconWidth(), imageIcon.getIconHeight(),
	// BufferedImage.TYPE_4BYTE_ABGR);
	// Graphics2D g2D = (Graphics2D) bufferedImage.getGraphics();
	// g2D.drawImage(imageIcon.getImage(), 0, 0,
	// imageIcon.getImageObserver());
	// int alpha = 0;
	// for (int j1 = bufferedImage.getMinY(); j1 < bufferedImage
	// .getHeight(); j1++) {
	// for (int j2 = bufferedImage.getMinX(); j2 < bufferedImage
	// .getWidth(); j2++) {
	// int rgb = bufferedImage.getRGB(j2, j1);
	// if (colorInRange(rgb))
	// alpha = 0;
	// else
	// alpha = 255;
	// rgb = (alpha << 24) | (rgb & 0x00ffffff);
	// bufferedImage.setRGB(j2, j1, rgb);
	// }
	// }
	// g2D.drawImage(bufferedImage, 0, 0, imageIcon.getImageObserver());
	// // 生成图片为PNG
	// String outFile = path.substring(0, path.lastIndexOf("."));
	// ImageIO.write(bufferedImage, "png", new File(outFile + ".png"));
	// } catch (IOException e) {
	// e.printStackTrace();
	// }
	// }

	public static boolean colorInRange(int color) {
		int red = (color & 0xff0000) >> 16;
		int green = (color & 0x00ff00) >> 8;
		int blue = (color & 0x0000ff);
		if (red >= color_range && green >= color_range && blue >= color_range)
			return true;
		return false;
	}

	public static int color_range = 255;
	public static Pattern pattern = Pattern.compile("[0-9]*");

	public static boolean isNo(String str) {
		return pattern.matcher(str).matches();
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// String path = JOptionPane.showInputDialog(null, "请输入图片目录");
		// if (path == null || !new File(path).isDirectory()) {
		// JOptionPane.showMessageDialog(null, "输入目录有误！");
		// return;
		// }
		// String color = JOptionPane.showInputDialog(null,
		// "请输入色差范围0~255(建议10~50)");
		// if (isNo(color)) {
		// color_range = 255 - Integer.parseInt(color);
		// File file = new File(path);
		// String[] files = file.list();
		// for (int i = 0; i < files.length; i++) {
		// String ext = files[i].substring(files[i].lastIndexOf(".") + 1);
		// if (ext.equals("jpg")) {
		// convert(path + "//" + files[i]);
		// }
		// }
		// JOptionPane.showMessageDialog(null, "转换完成！");
		// } else {
		// JOptionPane.showMessageDialog(null, "输入的数字有误！");
		// }
	}
}

class MyFilter extends RGBImageFilter {// 抽象类RGBImageFilter是ImageFilter的子类，
	// 继承它实现图象ARGB的处理
	int alpha = 0;

	public MyFilter(int alpha) {// 构造器，用来接收需要过滤图象的尺寸，以及透明度
		this.canFilterIndexColorModel = true;
		// TransparentImageFilter类继承自RGBImageFilter，它的构造函数要求传入原始图象的宽度和高度。
		// 该类实现了filterRGB抽象函数
		// ，缺省的方式下，该函数将x，y所标识的象素的ARGB值传入，程序员按照一定的程序逻辑处理后返回该象素新的ARGB值
		this.alpha = alpha;
	}

	public int filterRGB(int x, int y, int rgb) {
		DirectColorModel dcm = (DirectColorModel) ColorModel
				.getRGBdefault();
		// DirectColorModel类用来将ARGB值独立分解出来
		int red = dcm.getRed(rgb);
		int green = dcm.getGreen(rgb);
		int blue = dcm.getBlue(rgb);
		int alp = dcm.getAlpha(rgb);

		if (red == 255 && blue == 255 && green == 255) {// 如果像素为白色，则让它透明
			alpha = 0;
		} else {
			alpha = 255;
		}
		if (alp == 0) {// png和gif格式图片透明部分仍然透明
			alpha = 0;
		} else {
			alpha = 255;
		}
		return alpha << 24 | red << 16 | green << 8 | blue;// 进行标准ARGB输出以实现图象过滤
	}
}