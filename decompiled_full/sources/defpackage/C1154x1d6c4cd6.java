package defpackage;

import android.content.Context;
import coil3.ImageLoader;
import coil3.SingletonImageLoader;
import coil3.SingletonImageLoaderKt;
import kotlin.Unit;

/* renamed from: 땟둑딞뎬뒛땭뒵딠도뎽딤듰딌둑듨뎠땡딻따듨두땣듬땅되땄뒐뎨딄들돨뒤땧땅둣돨딻돠뒉듽돶둔땳뎬딸뎡땅땔땐뒾뎻됐땦땜뎸될든뒵땧둘딄됐땥뒷땨돠됨둔돸뒐돝듸딸땜땩돠딻땝딝뎬둬땫듽듨땃드드뎡땣드딄뒘딃돷뎡뎬딽뒉땍땝뒀드땲딠딠뒐듔뒬뎡둡뒘뒻된땵듸돵듰뎡뒝뎸돳딃땁땨뎨땤뒾땱따뒉, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1154x1d6c4cd6 implements SingletonImageLoader.Factory {
    @Override // coil3.SingletonImageLoader.Factory
    public final ImageLoader newImageLoader(Context context) {
        C1154x1d6c4cd6 c1154x1d6c4cd6 = SingletonImageLoaderKt.f490xfbe0c504;
        ImageLoader.Builder builder = new ImageLoader.Builder(context);
        builder.getExtras().set(SingletonImageLoaderKt.f491x3271d0aa, Unit.INSTANCE);
        return builder.build();
    }
}
