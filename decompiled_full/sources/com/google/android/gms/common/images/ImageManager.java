package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zak;
import com.google.android.gms.internal.base.zap;
import com.google.android.gms.internal.base.zaq;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class ImageManager {
    private static final Object zaa = new Object();
    private static HashSet<Uri> zab = new HashSet<>();
    private static ImageManager zac;
    private final Context zad;
    private final Handler zae = new zaq(Looper.getMainLooper());
    private final ExecutorService zaf = zap.zaa().zab(4, 2);
    private final zak zag = new zak();
    private final Map<zag, ImageReceiver> zah = new HashMap();
    private final Map<Uri, ImageReceiver> zai = new HashMap();
    private final Map<Uri, Long> zaj = new HashMap();

    @KeepName
    /* loaded from: classes2.dex */
    public final class ImageReceiver extends ResultReceiver {
        private final Uri zab;
        private final ArrayList<zag> zac;

        public ImageReceiver(Uri uri) {
            super(new zaq(Looper.getMainLooper()));
            this.zab = uri;
            this.zac = new ArrayList<>();
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable(new ObfuscatedString(new long[]{7725765607656171678L, 6095633175841529694L, -5268259634066369464L, -7560418164191640397L, 1665817579899460559L, -606149519376284154L, -2463501748671905603L}).toString());
            ImageManager imageManager = ImageManager.this;
            imageManager.zaf.execute(new zaa(imageManager, this.zab, parcelFileDescriptor));
        }

        public final void zab(zag zagVar) {
            Asserts.checkMainThread(new ObfuscatedString(new long[]{1743879463801359135L, 3162035590026658094L, 1140714841986390034L, 5702089964329800059L, 2248427383632840067L, 1786775206308977865L, -2477001112100559511L, 6364882363774949348L, 4550061942308525660L, -5854249838885603711L}).toString());
            this.zac.add(zagVar);
        }

        public final void zac(zag zagVar) {
            Asserts.checkMainThread(new ObfuscatedString(new long[]{-6877337709654564843L, -7987777662828248434L, -456953631043783035L, -4859104861779536500L, -2702290207914271748L, -7863434544606982339L, -4240484592421625552L, -1555799531331892725L, -5547176339643451320L, -3580592053589774306L}).toString());
            this.zac.remove(zagVar);
        }

        public final void zad() {
            Intent intent = new Intent(new ObfuscatedString(new long[]{4369815465305711787L, -4366543350572770072L, -8711859904086998833L, 9218077554060631957L, -5367046514690493309L, -396749804579497450L, 505743408788994078L}).toString());
            intent.setPackage(new ObfuscatedString(new long[]{6007121149449111865L, 3175061108200356077L, 5412807908592492058L, -8842269252366355445L}).toString());
            intent.putExtra(new ObfuscatedString(new long[]{-575514107508199392L, -5735656303080726442L, -7234911775776442568L, 622283291252891871L, -4253823078192443996L, -301507837643136967L}).toString(), this.zab);
            intent.putExtra(new ObfuscatedString(new long[]{6722513383573826484L, -1640619140736178351L, 8522998162652056155L, -3613686098574218602L, -7371082222985149318L, -3480602149445905689L, -3911003601833806255L}).toString(), this);
            intent.putExtra(new ObfuscatedString(new long[]{6719929050471646544L, 4419005374791833307L, -1253043989149127010L, 4853619871473693825L, -7138955845535432489L, -7291568384039046103L}).toString(), 3);
            ImageManager.this.zad.sendBroadcast(intent);
        }
    }

    /* loaded from: classes2.dex */
    public interface OnImageLoadedListener {
        void onImageLoaded(@NonNull Uri uri, @Nullable Drawable drawable, boolean z);
    }

    private ImageManager(Context context, boolean z) {
        this.zad = context.getApplicationContext();
    }

    @NonNull
    public static ImageManager create(@NonNull Context context) {
        if (zac == null) {
            zac = new ImageManager(context, false);
        }
        return zac;
    }

    public void loadImage(@NonNull ImageView imageView, int i) {
        zaj(new zae(imageView, i));
    }

    public final void zaj(zag zagVar) {
        Asserts.checkMainThread(new ObfuscatedString(new long[]{8836668152205423082L, 5675595604718877106L, 1606749859807930141L, -955713504989326785L, 5565552171209008400L, -7799028905032064990L, -5103032211270434302L, 5770801360875811431L, 8904981335437697036L}).toString());
        new zab(this, zagVar).run();
    }

    public void loadImage(@NonNull ImageView imageView, @NonNull Uri uri) {
        zaj(new zae(imageView, uri));
    }

    public void loadImage(@NonNull ImageView imageView, @NonNull Uri uri, int i) {
        zae zaeVar = new zae(imageView, uri);
        zaeVar.zab = i;
        zaj(zaeVar);
    }

    public void loadImage(@NonNull OnImageLoadedListener onImageLoadedListener, @NonNull Uri uri) {
        zaj(new zaf(onImageLoadedListener, uri));
    }

    public void loadImage(@NonNull OnImageLoadedListener onImageLoadedListener, @NonNull Uri uri, int i) {
        zaf zafVar = new zaf(onImageLoadedListener, uri);
        zafVar.zab = i;
        zaj(zafVar);
    }
}
