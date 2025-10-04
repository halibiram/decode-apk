package defpackage;

import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoSpec;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Consumer;

/* renamed from: 뒋돨뒋딝땋땦딸돰땅땠되딽되땜돳땪딌듟됨땤됫뒋듰둠따땧둥땫뒙땵될뎹딨뒼돶땯득두둘돰듨땤듸땪돝둬뎹듰든됫딀딎두땮뎸뎠듐뎰뎠딝뒛땱될땧두뒛딻뒘뒉도듟땧뎨듬둡되뎹뒵뎰뎰땫땡둡뒙땯땪뎬딨땃돤땣땭돤뎸땱두땍도듟뎽됐딞돨듌땣딌뒨땋돴딅딌둬딅뒷둑딄땧돼딀둥되돠땩뎰돰됫돠딅딤듬, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0674xf27a772 implements Consumer {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4502xfbe0c504;

    public /* synthetic */ C0674xf27a772(int i) {
        this.f4502xfbe0c504 = i;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.f4502xfbe0c504) {
            case 0:
                DeviceQuirks.m293xfbe0c504((QuirkSettings) obj);
                return;
            case 1:
                androidx.camera.video.internal.compat.quirk.DeviceQuirks.m407xfbe0c504((QuirkSettings) obj);
                return;
            case 2:
                androidx.camera.view.internal.compat.quirk.DeviceQuirks.m483xfbe0c504((QuirkSettings) obj);
                return;
            case 3:
                androidx.camera.camera2.internal.compat.quirk.DeviceQuirks.lambda$static$0((QuirkSettings) obj);
                return;
            case 4:
                IntentSanitizer.lambda$sanitizeByThrowing$1((String) obj);
                return;
            case 5:
                IntentSanitizer.lambda$sanitizeByFiltering$0((String) obj);
                return;
            default:
                Recorder.lambda$composeRecorderMediaSpec$8((VideoSpec.Builder) obj);
                return;
        }
    }
}
