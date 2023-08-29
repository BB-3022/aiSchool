import java.util.ArrayList;
import java.util.Scanner;

public class ex02뮤직플레이어 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//노래 리스트가 저장될 ArrayList 만들기
		
		ArrayList<String> song = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		
		int signal = 1;
		
		while(true) {
			System.out.print("[1]노래조회 [2]노래추가 [3]노래삭제 [4]종료 >>");
			int select = sc.nextInt();
			
			switch(select) {
			case 1:
				System.out.println("====현재 재생 목록=====");
				if(song.size()>0){
					for(int i=0;i<song.size();i++) {
						System.out.println((i+1) +". " + song.get(i));
					}
				}else {
					System.out.println("재생 목록이 없습니다.");
				}
				System.out.println("==================");
				break;
			
			case 2:	
				System.out.print("[1]마지막 위치에 추가 [2]원하는 위치에 추가 >> ");
				int select2 = sc.nextInt();
				if(select2 == 1) {
					System.out.print("추가할 노래 입력 >> ");
					String song_name = sc.next();
					song.add(song_name);
				}else if(select2 == 2) {
					System.out.print("추가할 노래 입력 >> ");
					String song_name = sc.next();
					System.out.print("추가할 위치 입력 >>");
					int song_lo = sc.nextInt();
					song.add(song_lo,song_name);
				}
				break;
			
			case 3:
				if(song.size()>0) {
					for(int i=0;i<song.size();i++) {
						System.out.println((i+1)+". "+song.get(i));
					}
					System.out.print("[1]선택삭제 [2]전체삭제 >>");
					int cho = sc.nextInt();
					if(cho==1) {
						System.out.print("삭제할 노래 선택 >> ");
						int del_song = sc.nextInt();
						song.remove(del_song);
					}else {
						song.clear();
					}
				}else if(song.size()==0) {
					System.out.println("재생 목록이 없습니다.");
				}
				break;
			
			case 4:
				System.out.println("프로그램을 종료합니다.");
				signal = 0;
				break;
			
			default :
				System.out.println("다시 입력해 주세요!!");
			}
			if(signal == 0) {
				break;
			}	
		}
		sc.close();

	}
}
