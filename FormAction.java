package com.soft.web;

import java.io.File;

import net.sf.jasperreports.engine.JRException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.soft.dao.ResumeDAO;
import com.soft.dao.UserDAO;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.ooxml.JRDocxExporter;
import net.sf.jasperreports.engine.util.JRLoader;

//下载表格连接
public class FormAction {

	// 文件流
	InputStream fileInputStream;
	// 文件下载名称
	String fileName;
	// 下载空报名表
	public String downloadForm() throws FileNotFoundException, JRException, UnsupportedEncodingException {
		String str = applicationForm();
		File file = new File(str);
		fileName = file.getName();// 获取文件名
		fileName = new String(fileName.getBytes(), "ISO8859-1");
		try {
			fileInputStream = new FileInputStream(file);
		}
		catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 转换为InputStream流

		return "success";
	}

	// 下载填好简历
	public String downloadMyForm() throws Exception {
		String str = myApplicationForm();
		File file = new File(str);
		fileName = file.getName();// 获取文件名
		fileName = new String(fileName.getBytes(), "ISO8859-1");
		try {
			fileInputStream = new FileInputStream(file);
		}
		catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // 转换为InputStream流

		return "success";
	}

	// 下载空报名表
	public String applicationForm() throws FileNotFoundException, JRException {
		String str = "E:/个人简历样表.docx";
		HashMap parameter = new HashMap();

		HashSet set = new HashSet();
		set.add("Hello");

		JRBeanCollectionDataSource source = new JRBeanCollectionDataSource(set);
		JasperReport jasperReport = (JasperReport) JRLoader.loadObject(new FileInputStream("E:/myjob.jasper"));
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameter, source);

		ArrayList list = new ArrayList();
		list.add(jasperPrint);
		JRDocxExporter exporter = new JRDocxExporter();
		exporter.setParameter(JRExporterParameter.JASPER_PRINT_LIST, list);
		exporter.setParameter(JRExporterParameter.OUTPUT_FILE, new File(str));
		exporter.exportReport();
		return str;
	}

	// 下载已填好的报名表
	@SuppressWarnings("unchecked")
	public String myApplicationForm() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		String username = (String) session.getAttribute("username");
		UserDAO user = new UserDAO();
		int user_id = user.getID(username);

		ResumeDAO resume = new ResumeDAO();
		HashMap parameter = resume.searchByID(user_id);
		String name = (String) parameter.get("name");
		String str = "E:/" + name + "个人简历.docx";
		if (parameter != null) {
			HashSet set = new HashSet();
			set.add("Hello");

			JRBeanCollectionDataSource source = new JRBeanCollectionDataSource(set);
			JasperReport jasperReport = (JasperReport) JRLoader.loadObject(new FileInputStream("E:/myjob.jasper"));
			JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameter, source);

			ArrayList list = new ArrayList();
			list.add(jasperPrint);
			JRDocxExporter exporter = new JRDocxExporter();
			exporter.setParameter(JRExporterParameter.JASPER_PRINT_LIST, list);
			exporter.setParameter(JRExporterParameter.OUTPUT_FILE, new File(str));
			exporter.exportReport();
		}
		return str;

	}

	public InputStream getFileInputStream() {
		return fileInputStream;
	}

	public void setFileInputStream(InputStream fileInputStream) {
		this.fileInputStream = fileInputStream;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

}
