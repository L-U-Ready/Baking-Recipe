package dao;

import dto.Board;

import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

public class BoardRepository {
    private static final BoardRepository instance = new BoardRepository();
    private List<Board> boardList = new ArrayList<>();

    public static BoardRepository getInstance() {
        return instance;
    }

    private BoardRepository() {
        // 초기 데이터 추가 (테스트용)
        addBoard("제목1", "User1", "password1", "첫 번째 글입니다.");
        addBoard("제목2", "User2", "password2", "두 번째 글입니다.");
    }

    public void addBoard(String title, String author, String password, String content) {
        Board board = new Board(title, author, password, content);
        boardList.add(board);
        // 글을 추가한 후에 목록을 업데이트
        updateBoardList();
    }

    public void deleteBoard(String author, String password) {
        Iterator<Board> iterator = boardList.iterator();
        while (iterator.hasNext()) {
            Board board = iterator.next();
            if (board.getAuthor().equals(author) && board.getPassword().equals(password)) {
                System.out.println("Deleting board: " + board.getTitle());
                iterator.remove();
                // 글을 삭제한 후에 목록을 업데이트
                // updateBoardList();
                break;
            }
        }
    }

    private void updateBoardList() {
        // 목록을 데이터베이스에서 다시 불러오는 로직
    }

    public List<Board> getAllBoards() {
        return new ArrayList<>(boardList);
    }
}
