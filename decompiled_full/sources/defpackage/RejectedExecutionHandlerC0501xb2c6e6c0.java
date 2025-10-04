package defpackage;

import androidx.camera.core.CameraExecutor;
import androidx.camera.core.Logger;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* renamed from: 돵딨땨뎨뒀땹돛둑땃돵딸딝땣뒛땩듟땬듨땝될두디딤됐듔딻땤딻둣된둔땦딞뒷땟듻될듨뒛땟딄둑딄땔돛뒋뒘뒾땃땀땻돸둡뒀뒐듨둔된득돷돠돰돳듨두딁도뒙돷땸땠돼따듸땵땻딨땦땦뒙땡듽둔딻뒝디둘돠됨땝땬땍딽땣뒼돷둑뒻뒹둔땋딜듬땃둥뒙둔땟땋딞뒈땻둔땋땰땁땹도뒷땍땟둬뒐딸딎땩딅되뎨땄, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RejectedExecutionHandlerC0501xb2c6e6c0 implements RejectedExecutionHandler {
    @Override // java.util.concurrent.RejectedExecutionHandler
    public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        Logger.e(CameraExecutor.TAG, "A rejected execution occurred in CameraExecutor!");
    }
}
