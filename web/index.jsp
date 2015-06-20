<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

 <html>
  <head>

    <title>Shop Tisr</title>
      <link href="index.css" rel="stylesheet" type="text/css"/>
      <link href="resources/css/reset.css" type="text/css" rel="stylesheet"/>
      <link href="resources/css/resources.css" type="text/css" rel="stylesheet"/>
      <link rel="stylesheet" href="resources/css/chart.css"/>
      <style>.GANXFT4BN4D{border-style:solid;border-width:1px;padding:0 !important;height:21px;width:2px;overflow:hidden;
          background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAIAAAAVCAYAAABsZT8HAAAAGklEQVR42mN4/fnvfxBmoJBx88Xv/yBMTwYA+d2en2a9xcEAAAAASUVORK5CYII=") -0px -0px  no-repeat;width:auto;height:auto;background-color:#f1f1f1;background-repeat:repeat-x;background-position:left bottom;border:1px solid #c6c6c6;padding:0;}.GANXFT4BN4D a{color:#3a3a3a;}.GANXFT4BINE{position:relative;outline:none;}.GANXFT4BHNE{height:3px;width:3px;overflow:hidden;background:url("data:image/gif;base64,R0lGODlhAwADAIAAAP///wAAACH5BAEAAAAALAAAAAADAAMAAAIDhH8FADs=") -0px -0px  no-repeat;overflow:visible;height:auto;width:auto;}.GANXFT4BPNE{height:150px;width:6px;overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAACWCAYAAAD9qvkLAAAAj0lEQVR42u3OQQrEIAyF4d7/KJ4l+yJCKQpVLCIVissOySI0M3OEV/g371Pqsnx9zjnifobneSQdc84yrOsqKfDovddknHNSCMGksG2bSeC+b9r33SQwxqAYo0khpWQSuK6LjuMwCbTWqJRiEjjPk2qtJgE+wbfeKfTeTQL8M37AOwAAAAAAAAAAAAAA/IUPaRwIEVGAb68AAAAASUVORK5CYII=") -0px -0px  no-repeat;padding-left:6px;zoom:1;width:auto;height:auto;}.GANXFT4BONE{height:150px;overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAACWCAYAAAAfduJyAAAAS0lEQVR42u3EsQkEIQAAwe2/FGvZXEQQURARRKzAb+ODm2AIIch7T2KMklKSnLOUUqTWKq016b3LGEPmnLLWkr23nHPk3vv19e/9AGohHKDbLYZjAAAAAElFTkSuQmCC") -0px -0px  repeat-x;width:auto;}.GANXFT4BAOE{overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAACWCAYAAAD9qvkLAAAAkUlEQVR42u3OQQqEMAyFYe9/FM/y9kUEkRZUlFJaKF06xKATRuYGr/CvvoS06/seUvf7zvOE9BpwzkESXNf1i8Mw4O7evGAcR9haa4rTNMH2wDzPsNVaFbz3sJVSFEIIsD2wLAtsOWeFbdtgizEq7PsO23EcCjJhk60LUkqwPSDHbPIBAoFAIBAIBAKBQCD8hQ/x2QgR2M1CkQAAAABJRU5ErkJggg==") -0px -0px  repeat;background-repeat:no-repeat;background-position:right 0;zoom:1;padding-right:6px;width:auto;}.GANXFT4BFNE{overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAYAAADgzO9IAAAAK0lEQVR42mNYtWrVmWfPnp35+PEjCmYgXwJdEixx/uxZuCQMM4AASBIdAwDBNnTZeycz+QAAAABJRU5ErkJggg==") -0px -0px  repeat;background-repeat:no-repeat;width:auto;background-position:0 bottom;padding-left:6px;zoom:1;line-height:1px;font-size:1px;}.GANXFT4BENE{overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAGCAYAAAACEPQxAAAAGklEQVR42mP4+PHjGQY04tmzZ2cYVq1adQYAQ9kUxQVWMbwAAAAASUVORK5CYII=") -0px -0px  repeat;background-position:0 bottom;zoom:1;width:auto;overflow:visible;height:6px;line-height:1px;font-size:1px;}.GANXFT4BGNE{overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAYAAADgzO9IAAAALUlEQVR42mP4+PHjGWT87NmzM6tWrTrDQJkESBAuAePA8PmzZyESIAIdMwABAFPNdNlqtAqhAAAAAElFTkSuQmCC") -0px -0px  repeat;background-repeat:no-repeat;background-position:right bottom;padding-right:6px;zoom:1;width:auto;height:auto;line-height:1px;font-size:1px;}.GANXFT4BJNE{width:6px;overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAFCAYAAABmWJ3mAAAAGklEQVR42mNYtWrVmWfPnp35+PEjCmaggwQAMdhn1eDko7MAAAAASUVORK5CYII=") -0px -0px  repeat-y;padding-left:6px;zoom:1;overflow:visible;height:auto;width:auto;}.GANXFT4BNNE{overflow:hidden;background:url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAFCAYAAABmWJ3mAAAAG0lEQVR42mP4+PHjGWT87NmzM6tWrTrDQAcJAIzIZ9WDvl5XAAAAAElFTkSuQmCC") -0px -0px  repeat;background-repeat:repeat-y;background-position:right 0;padding-right:6px;overflow:visible;width:auto;height:auto;}.GANXFT4BPNE{height:auto;border:none;}.GANXFT4BONE,.GANXFT4BAOE{height:auto;}.noheader .GANXFT4BPNE,.noheader .GANXFT4BONE{height:3px;border:none;}.GANXFT4BJNE{background-color:#e6e6e6;padding-left:6px;}.GANXFT4BNNE{background-color:#e6e6e6;padding-right:6px;}.GANXFT4BHNE{padding-top:0;background:#e8e8e8 !important;}.GANXFT4BENE,.GANXFT4BFNE,.GANXFT4BGNE{height:6px;}</style>
  </head>
  <body>
  <link rel="stylesheet" href="resources/css/chart.css"/>
  <link href="resources/css/skin_styles.css" type="text/css" rel="stylesheet"/>





  <iframe id="fr1" width="1600" frameborder="no" src="/resources/images/back_fon_lk.png"></iframe>



  <form id="paykkb" method="GET"
        action="<c:url value="/do/pay?order=${ orderId }&sumPaid=${ sumPaid }"/>">

  </form></center>

  <div hidefocus="true" tabindex="0" style=" width: 600px; height:700px; left: 500px; top: 0px; z-index: 1075;" class="GANXFT4BINE">
      <div class="GANXFT4BPNE"><div class="GANXFT4BAOE"><div class="GANXFT4BONE">
          <div style="width: 588px;" id="x-widget-114" class="GANXFT4BOME x-small-editor x-window-draggable">
              <div class="GANXFT4BBNE"></div><div class="GANXFT4BPME">
              <table aria-hidden="false" style="" class="x-panel-toolbar" cellpadding="0" cellspacing="0">
                  <tbody><tr><td style="vertical-align: top;" align="left">
                      <div title="Вызов справки" class="GANXFT4BH-C GANXFT4BHK GANXFT4BKGC"></div></td>
                      <td style="vertical-align: top;" align="left"><div title="Обновить форму" class="GANXFT4BH-C GANXFT4BHK GANXFT4BMGC">

                      </div></td><td style="vertical-align: top;" align="left">
                          <div class="GANXFT4BH-C GANXFT4BHK GANXFT4BKEC"></div></td></tr></tbody></table></div>
              <div id="x-widget-114-label" class="GANXFT4BCNE">Выписки</div></div></div></div>
      </div><div class="GANXFT4BDNE">
      <div class="GANXFT4BJNE">
          <div class="GANXFT4BNNE"><div class="GANXFT4BHNE">
              <div style="width: 588px; height: 550px;" class="GANXFT4BBOE">
                  <div style="position: relative; width: 588px; height: 550px;" class="GANXFT4BN2D">
                      <div style="border-width: 0px; left: 0px; top: 0px; width: 588px;" class="GANXFT4BACE noheader GANXFT4BJK GANXFT4BM2D">
                          <div class="GANXFT4BGCE"><div class="GANXFT4BHCE"><div class="GANXFT4BFCE x-hide-header">
                              <div style="display: none; width: 573px;" id="x-widget-121" class="GANXFT4BNCE x-small-editor GANXFT4BBK">
                              <div class="GANXFT4BADE"></div>
                              <div class="GANXFT4BOCE">
                                  <table aria-hidden="true" style="display: none;" class="x-panel-toolbar" cellpadding="0" cellspacing="0"><tbody><tr></tr></tbody></table></div><div id="x-widget-121-label" class="GANXFT4BBDE">&nbsp;</div></div></div></div></div><div class="GANXFT4BLBE"><div class="GANXFT4BBCE"><div class="GANXFT4BECE"><div class="GANXFT4BPBE">
                          <div style="width: 576px; height: 455px;" class="GANXFT4BFBE">
                              <div style="position: relative; overflow-y: auto; overflow-x: hidden; width: 576px; height: 455px;">
                                  <div style="position: relative; margin: 0px; width: 556px; height: 455px;">


                          <fieldset style="position: relative; width: 536px;" class="GANXFT4BA3D">
                                          <input type="image" img src="/resources/images/prikaz_body1.png" >
                          </fieldset>






   <fieldset style="position: relative; width: 536px;" class="GANXFT4BA3D">
                              <legend class="GANXFT4BC3D">
      <span class="GANXFT4BE3D"></span>

      <span class="GANXFT4BB3D">Плательщик</span></legend>
      <div style="width: 536px;" class="GANXFT4BO2D"><div style="position: relative; width: 536px;">


      <div style="position: relative; width: 536px;" class="GANXFT4BO3C">
         <div class="GANXFT4BBCD" style="width: 401px;">
          <label class="GANXFT4BA4C" style="width: 130px;">ИИН/БИН:</label>
          <input tabindex="0" name="abonentId" value="960123401627" style="padding-left: 35px;width: 193px;" class="GANXFT4BACD GANXFT4BLBD"
                 type="text" form="paykkb" >
          <div class="GANXFT4BM3C">
              <table cellspacing="10" border="1">
                  <tr>
                      <td>
                          <label class="GANXFT4BA4C" style="width: 130px;">Сумма оплаты:</label>
                          <input type="text" name="sumPaid" value="10501" form="paykkb"/></td>
                  </tr>
                  <tr>
                      <td>
                          <label class="GANXFT4BA4C" style="width: 130px;">Ордер Номер: (брать из sequence TISR_SEQ_KKB_ORDERID !!!! !!! )</label>
                          <input type="text" name="orderId" value="100000" form="paykkb"></td>
                  </tr>
                  <tr>
                      <td>
                          <label class="GANXFT4BA4C" style="width: 130px;">EMAIL:</label>
                          <input type="text" name="email" size=50 maxlength=50  value="SAbdikalikov@tisr.kz" form="paykkb">
                  </tr>
              </table>
          </div>
         </div>
     </div>


      <div style="position: relative; width: 536px;" class="GANXFT4BO3C">
          <label class="GANXFT4BA4C" style="width: 30px;">Наименование плательщика:</label>
          <input value="МАНАШОВ МАРХАБАТ АБЕНОВИЧ " style="width: 450px;" type="text">

      </div>

  </div></div>
  </fieldset>
      </div>
  </div></div><div style="height: 40px;" class="GANXFT4BHBE">
      <div style="width: 576px;" class="GANXFT4BMKE x-toolbar x-small-editor">
          <div style="width: 576px; height: 40px;" class="GANXFT4BB0C">
              <div style="margin: 0px; left: 193px; top: 5px;" title="Выполнить операцию" class="GANXFT4BFK GANXFT4BPJ GANXFT4BMK GANXFT4BJK">
                      <table hidefocus="-1" class="GANXFT4BGGD GANXFT4BGK" style=""
                             tabindex="0" cellpadding="0">
                          <tbody>
                          <tr>
                              <td class="GANXFT4BEGD"><div class="GANXFT4BDGD"><div class=" GANXFT4BHXC">
                              <table class="GANXFT4BMXC" cellpadding="10" cellspacing="15">
                                  <tbody>

          <td style="" valign="middle">
              <div class="GANXFT4BDYC">
                  <%--@declare id="paykkb"--%><button type="submit" form="paykkb"> <img src="resources/images/check_24.png" /> Применить</button>
              </div>
          </td>
                                  <td>
                                      <div style="margin: 0px; left: 301px; top: 5px;" title="Отмена выполнения операции" class="GANXFT4BFK GANXFT4BPJ GANXFT4BMK GANXFT4BJK"/>
                                      <button type="submit"> <img src="resources/images/close_32.png" /> Отмена</button>
                                  </td>
            </tr>
                          </tbody>
                          </table>
                          </div></div></td>
                              <td class="GANXFT4BKGD"><div></div></td></tr><tr><td class="GANXFT4BBGD"></td>
                              <td class="GANXFT4BAGD"></td><td class="GANXFT4BCGD"></td></tr></tbody>
                      </table></div>


          </div>
      </div></div>
  </div></div>
  </div><div class="GANXFT4BNBE">
      <div class="GANXFT4BOBE"><div class="GANXFT4BMBE"></div></div>
  </div></div></div></div></div>
      <div style="height: 0px;" class="GANXFT4BDOE">
          <div style="width: 588px;" class="GANXFT4BMKE x-toolbar x-small-editor GANXFT4BBK">
              <div style="width: 588px; height: 4px;" class="GANXFT4BB0C"></div></div></div>
  </div></div></div>
      <div class="GANXFT4BFNE"><div class="GANXFT4BGNE"><div class="GANXFT4BENE"></div></div></div></div>
      <div class="GANXFT4BCDE GANXFT4BDDE"></div><div class="GANXFT4BCDE GANXFT4BEDE"></div>
      <div class="GANXFT4BCDE GANXFT4BFDE"></div><div class="GANXFT4BCDE GANXFT4BGDE"></div>
      <div class="GANXFT4BCDE GANXFT4BHDE"></div><div class="GANXFT4BCDE GANXFT4BIDE"></div>
      <div class="GANXFT4BCDE GANXFT4BJDE"></div><div class="GANXFT4BCDE GANXFT4BKDE"></div></div>





  </body>






 </html>