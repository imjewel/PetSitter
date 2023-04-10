package com.cos.petsitter.model;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

//import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Table(name="board")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder //빌더 패턴
@Entity
@SequenceGenerator(
		name = "BOARD_SEQ_GENERATOR"
	    , sequenceName = "BOARD_SEQ"
	    , initialValue = 1
	    , allocationSize = 1
	)
public class Board {
	@Id //기본키
	 @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="BOARD_SEQ_GENERATOR")
	private int id;
	@Column(nullable=false, length=100)
	private String title;
	@Lob
	//대용량 데이터
	private String content;
	
	private String boardName;
	
	private int count; //조회수
	
	@ManyToOne(fetch = FetchType.EAGER)
	//Many=Board, User = One 한명이 여러개의 게시글을 쓸 수 있다.
	@JoinColumn(name="memberId")
	private Member member; //자바는 오브젝트를 저장할 수 있지만 DB는 오브젝트를 저장할 수 없기에 외래키를 사용한다.
	                     
	@OneToMany (mappedBy="board", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)//REMOVE는 게시글을 지울 때 댓글도 지운다는 의미. 오류날 경우 리무브 임포트 다시해보기
	//mappedBy는 연관관계의 주인이 아니라, DB에 컬럼을 만들지 않는다는 의미
	//하나의 게시글에는 여러개 댓글 작성
	@JsonIgnoreProperties({"board"})
	@OrderBy("id desc")
	private List<Reply> reply;
	
	@CreationTimestamp 
	//@JsonFormat(shape= JsonFormat.Shape.STRING, pattern="YYYY-MM-DD")
	private Timestamp createDate;
	
	//주소 찾기 시작
	@Column(nullable = true, length = 50)
	private String postcode;
	@Column(nullable = true, length = 50)
	private String road;
	@Column(nullable = true, length = 50)
	private String jibun;
	@Column(nullable = true, length = 50)
	private String detail;
	@Column(nullable = true, length = 50)
	private String extra;
	//주소 찾기 끝
	
	@Column(nullable = true, length = 10)
	private String category;

	@Column(nullable = true, length = 10)
	private String pet_size;
}
