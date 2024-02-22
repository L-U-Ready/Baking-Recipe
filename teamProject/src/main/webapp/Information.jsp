<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
   <!-- <link rel="stylesheet" href="./resources/css/Info.css"> -->
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Baking Recipe Information</title>
  <style>
  	@charset "UTF-8";
body {
      background-color: #FEF4E8;
      margin: 0;
    }
    @font-face {
      font-family:'BMHANNAPro';
      src:url('./resources/BMHANNAPro.woff')format('woff');
    }
    a:link {
  		color : #CF5C69;
	}
	a:visited {
  		color : #CF5C69;
  	}
    .container {
      display: grid;
      grid-template-columns: 1fr 3fr 1fr 1fr;
      grid-template-rows: auto auto;
      gap: 10px;
    }

    .box {
      background-color: #E9B1B0;
      margin: 10px;
      text-align: center;
      padding: 10px;
    }
    #box1 {
      grid-column: 2;
      border-radius: 20px;
      font-size: 16.5px;
      cursor: pointer;
      color: #ffffff; /* Default text color */
      transition: color 0.3s, background-color 0.3s;
    }
    #box2 {
      grid-column: 3;
      border-radius: 15px;
      height:200px;
      font-size: 16.5px;
      
      
    }
    table {
      text-align: center;
    }
    th {
  		white-space: nowrap; /* 줄바꿈 방지 속성 추가 */
  		}
    tr {
      color: #fef2e2;
    }
    td {
      padding: 15px;
      color: #ffffff;
    }
  	
  </style>
</head>
<body>
  <jsp:include page="Navigation.jsp"/>
  <p>
    <div class="container">
      <div class="box" id="box1">
        <p><b style="color: #CF5C69; font-size:20px;">밀가루 (Flour)</b><br>

        <div id="flour">
          <!-- Content for box1 -->
          <table>
            <tr>
              <th>강력분<p> <img alt="flour" src=".\resources\css\images\bread.jpg" height="150px"></th>
              <th>박력분<p> <img alt="flour" src=".\resources\css\images\madeleine.jpg" height="150px"></th>
            </tr>
            <tr>
              <td>글루텐 함량이 13%가량 되는 강력분의 경우 탄성이 있는 것이 특징으로 주로 빵(제빵)을 만드는 데에 사용됩니다.</td>
              <td>강력분에 비해 글루텐 함량이 적은 박력분은 탄성이 적기 때문에 바삭한 과자(제과)를 만드는 데 주로 사용됩니다.</td>
            </tr>
          </table>
          <p>제과와 제빵의 경우 위와 같이 밀가루로 나누는 것을 기본으로 하나, 이스트가 들어가서 발효과정을 거치는지(들어가면 제빵, 아니면 제과)등으로 나뉩니다. 제과는 쿠키와 같이 발효를 거치지 않고 만들고, 제빵은 반죽을 발효하고 모양을 만든 다음, 다시 2차 발효 과정을 통해 구워내는 것으로 식빵, 단팥빵 등이 여기에 속합니다.</p>
          <p>외국에서는 제과를 하는 사람을 파티시에(/파티시엘), 제빵을 하는 사람을 블랑제, 초콜릿을 만드는 사람을 쇼콜라티에라고 구분해서 부르기도 합니다.</p>
        </div>
        <p><b style="color: #CF5C69; font-size:20px;">버터 (Butter)</b><br>
        <div id="Butter">
          <!-- Content for '직업의 분류' -->
          <p>
            <table>
              <tr>
                <th>용도</th>
                <td style="text-align:left;">버터는 생크림의 지방구 덩어리로 80% 이상의 유지방과 14~18% 이하의 수분으로 이루어집니다. <br>
                  버터는 제과의 필수 재료 중 하나로 빵, 과자에 풍미를 더하고 부드러운 식감을 내며,
                  소금의 유무에 따라 가염버터와 무염버터로 나눌 수 있고, 주로 베이킹에서는 무염버터를 사용합니다.<br>
                </td>

              </tr>
              <tr>
                <th>보관법</th>
                <td style="text-align:left;">냉장 보관 해두었던 버터를 실온에 꺼내두면 버터의 결정구조가 바뀌어 버터의 크리밍성, 가소성 등이 사라집니다.
                  따라서 사용할 만큼 소분하여 실온에 두고 사용하는 방법이 권장되며 장기간 사용하게 되는 경우에는 냉장보관을 권장합니다. <br></td>
              </tr>
            </table>
          </div>
          <p><b style="color: #CF5C69; font-size:20px;">베이킹 도구 (Baking Tools)</b><br>
          <div id="cookingTools">
            <!-- Content for '조리도구 이야기' -->
            <p>베이킹에 필요한 도구는 제과/제빵에 따라 그 종류가 다릅니다.<br> 하지만 기본적으로 아래의 재료들을 갖출 것을 권장합니다. </p>
            <p><img alt="tools" src=".\resources\css\images\bakingTools.jpg" height="200px"></p>
            <table>
              <tr>
                <th>장비 및 도구</th>
                <th>베이킹 재료</th>
              </tr>
              <tr>
                <td>오븐, 핸드믹서, 전자저울, 계량스푼, 믹싱볼, 채, 실리콘 주걱, 스크래퍼, 밀대, 짤주머니 등</td>
                <td>밀가루(강력분, 박력분), 베이킹파우더, 우유, 생크림, 버터, 계란, 소금, 설탕, 바닐라 익스트랙 등</td>
              </tr>
            </table>
          </div>

        </div>

        <div class="box" id="box2">
          <p></p>
          <p><b><a href="Event.jsp">EVENT</a></b></p>
          <b id="communityHeader"><a href="board.jsp">COMMUNITY</a></b>
          <div id="communitySection">
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
