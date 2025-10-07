package defpackage;

import android.view.MenuItem;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.widget.PopupMenu;
import com.google.android.material.navigation.NavigationBarView;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.activities.MainBaseActivity;
import com.tknetwork.tunnel.utils.gen;

/* renamed from: 뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0375x845d249c implements PopupMenu.OnMenuItemClickListener, NavigationBarView.OnItemSelectedListener, MainBaseActivity.EpkiPost, ActivityResultCallback, gen.OnGenerateListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3765xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ActivityUi f3766x3271d0aa;

    public /* synthetic */ C0375x845d249c(ActivityUi activityUi, int i) {
        this.f3765xfbe0c504 = i;
        this.f3766x3271d0aa = activityUi;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        switch (this.f3765xfbe0c504) {
            case 4:
                this.f3766x3271d0aa.lambda$new$2((ActivityResult) obj);
                return;
            case 5:
                this.f3766x3271d0aa.lambda$new$3((ActivityResult) obj);
                return;
            case 6:
                this.f3766x3271d0aa.lambda$new$4((ActivityResult) obj);
                return;
            case 7:
                this.f3766x3271d0aa.lambda$new$64((ActivityResult) obj);
                return;
            default:
                this.f3766x3271d0aa.lambda$new$66((Boolean) obj);
                return;
        }
    }

    @Override // com.tknetwork.tunnel.utils.gen.OnGenerateListener
    public void onGenerate(String str) {
        this.f3766x3271d0aa.lambda$dialogAddPayload$91(str);
    }

    @Override // androidx.appcompat.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        boolean lambda$import_menu$40;
        boolean lambda$menu$43;
        switch (this.f3765xfbe0c504) {
            case 0:
                lambda$import_menu$40 = this.f3766x3271d0aa.lambda$import_menu$40(menuItem);
                return lambda$import_menu$40;
            default:
                lambda$menu$43 = this.f3766x3271d0aa.lambda$menu$43(menuItem);
                return lambda$menu$43;
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        boolean lambda$nav_Button$17;
        lambda$nav_Button$17 = this.f3766x3271d0aa.lambda$nav_Button$17(menuItem);
        return lambda$nav_Button$17;
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity.EpkiPost
    public void post_dispatch(String str) {
        this.f3766x3271d0aa.do_connect(str);
    }
}
