import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@WebServlet(name = "FileUploadServlet", urlPatterns = {"/upload"})
public class FileUploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uploadPath = "/path/to/upload/directory"; // 업로드할 디렉토리 경로 지정

        try (InputStream fileContent = request.getInputStream()) {
            // 업로드할 파일명 지정 (여기서는 예시로 "uploadedFile.txt"로 고정)
            String fileName = "uploadedFile.txt";
            Path filePath = Paths.get(uploadPath, fileName);

            // 파일 저장
            Files.copy(fileContent, filePath);

            response.getWriter().println("파일 업로드 성공: " + fileName);
        } catch (IOException e) {
            response.getWriter().println("파일 업로드 실패: " + e.getMessage());
        }
    }
}
