package defpackage;

import android.content.Context;
import androidx.camera.camera2.internal.Camera2CameraFactory;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraThreadConfig;

/* renamed from: 돵뒋딌됴땠딟된뎸땯딄딄뒬땐땁뎽뒤됴땀딜뒐땱득땝뒼딨뒤땨땁땮땲됨딝땄딟뒋둥둬뎠돛뒵디둑딐뒬딄뒷땭땬땣됨됩됐되딤둬뒐듸땐딄딹땋딨뎸돼듬땋땔돤땲듸뎽땭땟되딄뎻도뒐돼땍뒹땦딹디듽땃뎹득뎰뒈땜뎸땱딽땐뒈땵듬둡땮둥딤되땭땦도돛듰땱돶딝돷뎽돝뒼됐돛두땫딀딠딄듰땜딜뒋도땐뒛땲, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0493x52e5dfc5 implements CameraFactory.Provider {
    @Override // androidx.camera.core.impl.CameraFactory.Provider
    public final CameraFactory newInstance(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j) {
        return new Camera2CameraFactory(context, cameraThreadConfig, cameraSelector, j);
    }
}
