package dao;

import dto.Board;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class FileBoardRepository {
    private static final String DIRECTORY_PATH = "./resources/";
    private static final String FILE_PATH = DIRECTORY_PATH + "postData.txt";

    private List<Board> boards = new ArrayList<>();

    private static final FileBoardRepository instance = new FileBoardRepository();

    public static FileBoardRepository getInstance() {
        return instance;
    }

    private FileBoardRepository() {
        // 디렉토리 생성
        createDirectory();
        // 파일에서 데이터 로드
        loadFromFile();
    }

    public void addBoard(String title, String author, String password, String content) {
        boards.add(new Board(title, author, password, content));
        // 파일에 데이터 저장
        saveToFile();
    }

    public List<Board> getAllBoards() {
        return new ArrayList<>(boards);
    }

    // 삭제 기능
    public void deleteBoard(String title, String password) {
        Board boardToRemove = null;
        for (Board board : boards) {
            if (board.getTitle().equals(title) && board.getPassword().equals(password)) {
                boardToRemove = board;
                break;
            }
        }

        if (boardToRemove != null) {
            boardToRemove.setDeleted(true); // 삭제 표시
            // 파일에서 데이터 삭제
            saveToFile();
        }
    }

    private void loadFromFile() {
        try (BufferedReader reader = new BufferedReader(new FileReader(FILE_PATH))) {
            List<Board> loadedBoards = new ArrayList<>();

            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(",");
                if (parts.length == 5) { // 수정: deleted 필드 추가로 길이를 5로 변경
                    Board board = new Board(parts[0], parts[1], parts[2], parts[3]);
                    board.setDeleted(Boolean.parseBoolean(parts[4])); // 삭제 여부 설정
                    loadedBoards.add(board);
                }
            }

            // 파일에서 로드한 데이터를 기존 데이터에 추가
            boards.clear();
            for (Board loadedBoard : loadedBoards) {
                if (!loadedBoard.isDeleted()) {
                    boards.add(loadedBoard);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveToFile() {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILE_PATH))) {
            for (Board board : boards) {
                writer.write(board.getTitle() + "," + board.getAuthor() + ","
                        + board.getPassword() + "," + board.getContent() + ","
                        + board.isDeleted()); // 수정: 삭제 여부 추가
                writer.newLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createDirectory() {
        Path path = Paths.get(DIRECTORY_PATH);
        if (!Files.exists(path)) {
            try {
                Files.createDirectories(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
