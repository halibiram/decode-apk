package defpackage;

import android.content.Context;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.impl.WorkDatabase;
import com.airbnb.lottie.L;
import com.airbnb.lottie.network.LottieNetworkCacheProvider;
import java.io.File;

/* renamed from: 딃땧땩딽딃돤뎰돶딸땃딤돼땪땧돸돴뒀뒹땋땤땍됐듟땁듬될뎸됫될들디딻됐땔뒷땬됨돶땱땃뎡뎨땔듔땰뒐둔듨돰듼딻땝땰디딎되든딸둠딞됐딎돷돛뒻땍듔뎹돴돤땦땃뎬됩땜된딄땍두돸땯듽돳땝돼듐두땫뒛딤둬땤돶땃뎹땭돵땫땀땳듻됴땪땯돷땲돳땜땅됫땀땝돠돠딀둬땀돠뎹됐딁딝땟둥뒬딠땣땔뒤듌, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0914xf9eefc47 implements LottieNetworkCacheProvider, SupportSQLiteOpenHelper.Factory {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Context f5056xfbe0c504;

    public /* synthetic */ C0914xf9eefc47(Context context) {
        this.f5056xfbe0c504 = context;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        return WorkDatabase.Companion.m870xfbe0c504(this.f5056xfbe0c504, configuration);
    }

    @Override // com.airbnb.lottie.network.LottieNetworkCacheProvider
    public File getCacheDir() {
        File lambda$networkCache$0;
        lambda$networkCache$0 = L.lambda$networkCache$0(this.f5056xfbe0c504);
        return lambda$networkCache$0;
    }
}
