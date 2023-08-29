package 뮤직플레이어;

import java.util.ArrayList;
import java.util.Scanner;

import javazoom.jl.player.MP3Player;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner sc = new Scanner(System.in);
			
		//노래를 실행, 정지해주는 객체
		MP3Player mp3 = new MP3Player();
		
		//mp3.play("C:\\Users\\gjaischool1\\Desktop\\mp3\\아이브-LoveDive.mp3");
		//하나의 노래에는 4개의 데이터가 있다. 4개의 데이터는 하나의 정보를 담고있다.
		
		//m1~m5를 하나로 묶는 방법
		// 1. 배열
		// 2. ArrayList
		Music m1 = new Music("뉴진스","HypeBoy",2023,90,"C:\\Users\\gjaischool1\\Desktop\\mp3\\뉴진스-HypeBoy.mp3");
		Music m2 = new Music("르세라핌","Antifragile",2022,80,"C:\\Users\\gjaischool1\\Desktop\\mp3\\르세라핌-Antifragile.mp3");
		Music m3 = new Music("아이브","LoveDive",2020,70,"C:\\Users\\gjaischool1\\Desktop\\mp3\\아이브-LoveDive.mp3");
		Music m4 = new Music("윤하","사건의지평선",2018,100,"C:\\Users\\gjaischool1\\Desktop\\mp3\\윤하-사건의지평선.mp3");
		Music m5 = new Music("카라","When I Move",2019,90,"C:\\Users\\gjaischool1\\Desktop\\mp3\\카라-WhenIMove.mp3");
		
		ArrayList<Music> list = new ArrayList<>();
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
		
//		 setter 를 사용 4개의 데이터가 각각 초기화 된다.
//		m1.setSinger("아이들");
//		m1.setTitle("퀸카");
//		m1.setTime(90);
//		m1.setYear(2023);
	
		int point = 0;
		
		while(true) {
			System.out.print("1.재생 2.정지 3.이전곡 4.다음곡 5.목록 6.종료 >> ");
			int menu = sc.nextInt();
			
			if(menu==1) {
				System.out.println("======재생======");
				
				// mp3가 실행되고 있는지 확인 하는 메서드
				if(mp3.isPlaying()) {
					mp3.stop();
				}
				
				mp3.play(list.get(point).getPath());
				
				System.out.println((point+1)+". "+ list.get(point).getSinger()+"-"+list.get(point).getTitle()+"("+
						list.get(point).getTime()+")초");
			}else if(menu == 2) {
				System.out.println("======정지======");
				
				if(mp3.isPlaying()) {
					mp3.stop();
				}
				System.out.println((point+1)+". "+ list.get(point).getSinger()+"-"+list.get(point).getTitle()+"("+
						list.get(point).getTime()+")초");
				
			}else if(menu == 3) {
				System.out.println("======이전곡======");
				
				if(mp3.isPlaying()) {
					mp3.stop();
				}
			
				if(point>0) {
					point--;
					mp3.play(list.get(point).getPath());
				}
				
				System.out.println((point+1)+". "+ list.get(point).getSinger()+"-"+list.get(point).getTitle()+"("+
						list.get(point).getTime()+")초");
				System.out.println();
				
			}else if(menu == 4) {
				System.out.println("======다음곡======");
				//현재 1번 노래를 듣고 있다면, 다음 곡을 눌렀을 때 2번 노래의 정보가 나와야 한다.
				//현재 몇번 째 노래가 실행되고 있는지 위치를 알고 있는 변수가 필요
				if(mp3.isPlaying()) {
					mp3.stop();
				}
				if(point<list.size()-1) {
					point++;
					mp3.play(list.get(point).getPath());
				}
				
				System.out.println((point+1)+". "+ list.get(point).getSinger()+"-"+list.get(point).getTitle()+"("+
						list.get(point).getTime()+")초");
				System.out.println();
			
			}else if(menu == 5) {
				System.out.println("======목록======");
				// 1. 아이들-퀸카(90초).....list의 노래가 전부 출력
				for(int i=0;i<list.size();i++) {
					
					System.out.println((i+1)+". "+ list.get(i).getSinger()+"-"+list.get(i).getTitle()+"("+
					list.get(i).getTime()+")초");
					System.out.println();
				}
			}else if(menu == 6) {
				if(mp3.isPlaying()) {
					mp3.stop();
				}
				System.out.println("프로그램을 종료합니다.");
				break;
			}
		}
	}

}
