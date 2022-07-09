package com.asm.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadFileUtils {
	public File UploadFile(MultipartFile uploadfile) {
		String folderPath = "C:\\Java5\\Assignment1\\src\\main\\webapp\\imgs\\imgAccounts";
		File myUploadFolder = new File(folderPath);
		
		
		// Kiểm tra thư mục có tồn tại hay không? nếu không tạo thư mục mới
		if(!myUploadFolder.exists()) {
			myUploadFolder.mkdirs();
		}
		
		File saveFile = null;
		try {
			// Lưu file vào thư mục đã chọn
			String uuid = UUID.randomUUID().toString();
			String fileName = uuid + "_" + uploadfile.getOriginalFilename();
			saveFile = new File(myUploadFolder, fileName);
			uploadfile.transferTo(saveFile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return saveFile;
	}
}
