<!-- 회원정보 수정 페이지 일부분 -->
<style>
    /* 스타일링을 위한 CSS */
    .form-label {
        font-size: 18px;
        color: #333;
        margin-bottom: 5px;
    }

    .form-control {
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 10px;
        font-size: 16px;
        width: 100%;
        margin-bottom: 15px;
    }

    /* 추가적인 스타일링을 위한 클래스 */
    .custom-input {
        background-color: #f5f5f5;
    }

    .custom-input:focus {
        background-color: #e8e8e8;
    }
</style>

<div class="container">
    <h3 class="text-center font-weight-light my-4">회원정보 수정</h3>
    <form action="EditService" method="post" id="editForm">
        <label class="form-label" for="mb_pw">비밀번호</label>
        <input type="password" class="form-control custom-input" name="mb_pw" id="mb_pw">
        <label class="form-label" for="mb_pw_confirm">비밀번호 확인</label>
        <input type="password" class="form-control custom-input" name="mb_pw_confirm" id="mb_pw_confirm">
        <p id="passwordMessage" class="mb-0"></p>

        <label class="form-label" for="mb_name">이름</label>
        <input type="text" class="form-control custom-input" name="mb_name">

        <label class="form-label" for="mb_tel">전화번호</label>
        <input type="text" class="form-control custom-input" name="mb_tel">

        <label class="form-label" for="mb_birth">생년월일</label>
        <input type="text" class="form-control custom-input" name="mb_birth">

        <!-- 나머지 입력 항목들... -->

        <div class="card-body">
            <div class="css-mypagebutton">
                <!-- 버튼 등의 코드... -->
            </div>
        </div>
    </form>
    <!-- 나머지 코드... -->
</div>
