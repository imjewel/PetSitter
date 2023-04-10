let index={
	init: function(){
		$("#btn-petsave").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.save();
		});
        $("#btn-petupdate").on("click", (event) => {
            this.update(event);
        });
		$("#btn-petdelete").on("click",()=>{
			//화살표 함수사용 이유: this를 바인딩하기 위해 사용
			this.deleteById();
		});
	},

  save: function() {
    let vaccinValue = $("input[name='vaccin']:checked").map(function() {
        return $(this).val();
    }).get().join(','); // 배열 값을 문자열로 변환
	    let data = {
	      id: $("#id").val(),
	      name: $("#name").val(),
	      gender: $("input[name='gender']:checked").val(),
	      category: $("input[name='category']:checked").val(),
	      pet_type: $("#pet_type").val(),
	      age: $("#age").val(),
	      pet_size: $("input[name='pet_size']:checked").val(),
  	      weight: $("#weight").val(),
	      neutered: $("input[name='neutered']:checked").val(),
	      hospital: $("#hospital").val(),
	      vaccin: vaccinValue,
	      etc: $("#etc").val()
	      //img: $("#files").prop("files")[0]
	    };
	    let formData = new FormData();
	    formData.append("data", JSON.stringify(data));
	    formData.append("img", data.img);
		$.ajax({ 
			type:"POST",
			url:"/api/pet",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("펫정보 등록이 완료되었습니다.");
			location.href="/petProfile";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
  },
  
  	update: function(){
      let vaccinValue = $("input[name='vaccin']:checked").map(function() {
        return $(this).val();
    }).get().join(','); // 배열 값을 문자열로 변환
 		let data = {
	      id: $("#id").val(),
	      name: $("#name").val(),
	      gender: $("input[name='gender']:checked").val(),
	      category: $("input[name='category']:checked").val(),
	      pet_type: $("#pet_type").val(),
	      age: $("#age").val(),
	      pet_size: $("input[name='pet_size']:checked").val(),
  	      weight: $("#weight").val(),
	      neutered: $("input[name='neutered']:checked").val(),
	      hospital: $("#hospital").val(),
	      vaccin: vaccinValue,
	      etc: $("#etc").val()
	      //img: $("#files").prop("files")[0]
		};
		//console.log(id);
		console.log(data);
		$.ajax({ 
			type:"PUT",
			url:"/api/petUpdate",
			data:JSON.stringify(data), 
			contentType:"application/json; charset=utf-8",
			dataType:"json" 
		}).done(function(resp){
			alert("수정이 완료되었습니다.");
			location.href=`/petProfile`;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
		deleteById: function(){
		let id=$("#id").text();
		
		$.ajax({ 
			type:"DELETE",
			url:"/api/pet/"+id,
			dataType:"json" 
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/myPage";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
};
index.init();