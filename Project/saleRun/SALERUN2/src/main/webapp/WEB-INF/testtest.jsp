   window.onload = function() {
        // MINISTOP 체크박스 선택
        var MINISTOPCheckbox = document.querySelector('input[name="m_name"][value="MINISTOP"]');
        if (MINISTOPCheckbox) {
            MINISTOPCheckbox.checked = true;
        }
        
        // 검색창에 '동구'라는 검색어 입력
        var searchBar = document.querySelector('.searchBar');
        if (searchBar) {
            searchBar.value = '동구';
        }
        
     
    };