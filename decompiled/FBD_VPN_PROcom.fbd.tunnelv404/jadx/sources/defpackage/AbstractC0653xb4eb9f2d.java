package defpackage;

import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.ViewUtils;

/* renamed from: 뒀들돛뒘뒐됴땋듔돸땬디돨딄둑뒉듌땦딠땮딀듌돷뎨딞땟딁들듼뎬땁따둠땨뎬들듻딜땝뒐듌뒙뒀듻땬땸뒤땧땁듸땯듟둠둑듐땟땱디됐뒵돵됨뎨뒬되땅땯땠땄땡뎨뒾딠땪땯듟땧돛딄뒵뒻딝땡듸드딜뒐뎬둠돼뒨들돠돳땋땲됐됩땦뒀땨든땤뎸듨딨둬뎬뎽돼딎뎰들도뎹됫듰둥둥돶딄돳됩뒉딜땨땣듻뒨둣땩 */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0653xb4eb9f2d {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m3265xfbe0c504(EditText[] editTextArr, View view, boolean z) {
        for (EditText editText : editTextArr) {
            if (editText.hasFocus()) {
                return;
            }
        }
        ViewUtils.hideKeyboard(view, false);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ void m3266x3271d0aa(View view) {
        ViewUtils.requestFocusAndShowKeyboard(view, false);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static void m3267x1378447b(final EditText... editTextArr) {
        if (editTextArr.length == 0) {
            return;
        }
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() { // from class: 뒀뒼든땨둬뒐땭둡땥땁땩뒷땔둠뒾뒷돤됫땝땬딤뒙돤들딁됫딝둬뎻땤뎨둣듬두땝뎠될된듐둣딜땤땱둬딨땬땨뒝땤듸땄두땥땲듼땫딄돠뒷땻땩딄땪돶땹땭뎡뒙둣뒛땭든돸땸땩돵뎹딃땲듨땤딃딹뎡딎땫딠돷듼돳딄땮듼땲뒉뒈땐뒤딎딐됩땬딅뒘딸뒛땀땟든됐땳돠뒻땪뒹뒝듰땅두땟들딜땟돴듐돼땪딻됴땧
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                AbstractC0653xb4eb9f2d.m3265xfbe0c504(editTextArr, view, z);
            }
        };
        for (EditText editText : editTextArr) {
            editText.setOnFocusChangeListener(onFocusChangeListener);
        }
        EditText editText2 = editTextArr[0];
        editText2.postDelayed(new RunnableC0450xb2a4f6ac(editText2, 11), 100L);
    }
}
