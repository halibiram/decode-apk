package androidx.camera.camera2.internal.compat;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;

/* renamed from: androidx.camera.camera2.internal.compat.뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0023x1db10c9d {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static CameraManagerCompat.CameraManagerCompatImpl m176xfbe0c504(Context context, Handler handler) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            return new CameraManagerCompatApi30Impl(context);
        }
        if (i >= 29) {
            return new CameraManagerCompatApi29Impl(context);
        }
        if (i >= 28) {
            return CameraManagerCompatApi28Impl.create(context);
        }
        return CameraManagerCompatBaseImpl.create(context, handler);
    }
}
