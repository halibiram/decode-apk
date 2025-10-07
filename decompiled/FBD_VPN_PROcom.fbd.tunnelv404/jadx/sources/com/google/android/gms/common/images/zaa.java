package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Asserts;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes2.dex */
final class zaa implements Runnable {
    final /* synthetic */ ImageManager zaa;
    private final Uri zab;

    @Nullable
    private final ParcelFileDescriptor zac;

    public zaa(ImageManager imageManager, @Nullable Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmap;
        boolean z;
        Handler handler;
        Asserts.checkNotMainThread(new ObfuscatedString(new long[]{4324885835311439053L, -5336725254658238945L, 6133476873316726360L, 5711466899831039368L, -5444996490556630081L, -3438027416088202484L, -1378228022142941094L, 1062745267151855605L, 5351745266190829884L}).toString());
        ParcelFileDescriptor parcelFileDescriptor = this.zac;
        Bitmap bitmap2 = null;
        boolean z2 = false;
        if (parcelFileDescriptor != null) {
            try {
                bitmap2 = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError unused) {
                String valueOf = String.valueOf(this.zab);
                new ObfuscatedString(new long[]{7474297885276654137L, 1990769366328348664L, -2354365721145758620L}).toString();
                new ObfuscatedString(new long[]{-1092885445675528977L, -6390394216876131189L, 6441423546935136260L, -4370494251604642467L, 5248972369394702381L, -1344255559691479364L}).toString().concat(valueOf);
                z2 = true;
            }
            try {
                this.zac.close();
            } catch (IOException unused2) {
                new ObfuscatedString(new long[]{8051954032439252507L, -8980925225960287797L, 7693707348400983782L}).toString();
                new ObfuscatedString(new long[]{-3023542215354339504L, -8518523549002654461L, 6828773980655376862L}).toString();
            }
            bitmap = bitmap2;
            z = z2;
        } else {
            bitmap = null;
            z = false;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.zaa;
        handler = imageManager.zae;
        handler.post(new zac(imageManager, this.zab, bitmap, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException unused3) {
            String valueOf2 = String.valueOf(this.zab);
            new ObfuscatedString(new long[]{-5000731588198080168L, -5201539298994292083L, -4311449085812647240L}).toString();
            new ObfuscatedString(new long[]{-5303220231192002624L, -1411709705662957443L, 1582514902857859087L, 2372117411229765526L, -2401429846337650025L}).toString().concat(valueOf2);
        }
    }
}
