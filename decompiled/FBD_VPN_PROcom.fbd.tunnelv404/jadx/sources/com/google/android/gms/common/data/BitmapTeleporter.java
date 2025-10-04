package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.panda912.muddy.ObfuscatedString;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

@ShowFirstParty
@KeepForSdk
@SafeParcelable.Class(creator = "BitmapTeleporterCreator")
/* loaded from: classes2.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();

    @SafeParcelable.VersionField(id = 1)
    final int zaa;

    @Nullable
    @SafeParcelable.Field(id = 2)
    ParcelFileDescriptor zab;

    @SafeParcelable.Field(id = 3)
    final int zac;

    @Nullable
    private Bitmap zad;
    private boolean zae;
    private File zaf;

    @SafeParcelable.Constructor
    public BitmapTeleporter(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.Param(id = 3) int i2) {
        this.zaa = i;
        this.zab = parcelFileDescriptor;
        this.zac = i2;
        this.zad = null;
        this.zae = false;
    }

    private static final void zaa(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
            new ObfuscatedString(new long[]{4104675982208917120L, -3480871031453655673L, -6352888731911565169L}).toString();
            new ObfuscatedString(new long[]{-888411624525487160L, 8682697946306345369L, -3968912938333744191L, 3042513254018598892L}).toString();
        }
    }

    @Nullable
    @KeepForSdk
    public Bitmap get() {
        if (!this.zae) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) Preconditions.checkNotNull(this.zab)));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zaa(dataInputStream);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                    createBitmap.copyPixelsFromBuffer(wrap);
                    this.zad = createBitmap;
                    this.zae = true;
                } catch (IOException e) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{3068701605710926201L, 4842425814043783851L, -2657993611180058201L, 3446360235918417466L, -7283394205635945801L, -2930989285046546948L, -97633251237523009L}).toString(), e);
                }
            } catch (Throwable th) {
                zaa(dataInputStream);
                throw th;
            }
        }
        return this.zad;
    }

    @KeepForSdk
    public void release() {
        if (!this.zae) {
            try {
                ((ParcelFileDescriptor) Preconditions.checkNotNull(this.zab)).close();
            } catch (IOException unused) {
                new ObfuscatedString(new long[]{1198125908141242178L, 6635477168203543342L, 6110259822820203709L}).toString();
                new ObfuscatedString(new long[]{8087634942290764340L, -2238515575210509073L, -8435780995681748703L, -7031584195731347039L}).toString();
            }
        }
    }

    @KeepForSdk
    public void setTempDir(@NonNull File file) {
        if (file != null) {
            this.zaf = file;
            return;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{1316831893527639415L, 4188971219424031058L, -5274104724108247345L, 5010580760675632206L, 3180879673258271443L}).toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        if (this.zab == null) {
            Bitmap bitmap = (Bitmap) Preconditions.checkNotNull(this.zad);
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getHeight() * bitmap.getRowBytes());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            File file = this.zaf;
            if (file != null) {
                try {
                    File createTempFile = File.createTempFile(new ObfuscatedString(new long[]{-5533962242166804877L, 2517998212690016410L, -6490776854096209657L}).toString(), new ObfuscatedString(new long[]{2107564221467928774L, 8796710551445771450L}).toString(), file);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                        this.zab = ParcelFileDescriptor.open(createTempFile, 268435456);
                        createTempFile.delete();
                        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                        try {
                            try {
                                dataOutputStream.writeInt(array.length);
                                dataOutputStream.writeInt(bitmap.getWidth());
                                dataOutputStream.writeInt(bitmap.getHeight());
                                dataOutputStream.writeUTF(bitmap.getConfig().toString());
                                dataOutputStream.write(array);
                            } catch (IOException e) {
                                throw new IllegalStateException(new ObfuscatedString(new long[]{7802415458624465733L, -8500206275091220402L, -1239751672636807102L, 2810041491000224336L, 6181589890342146630L, -1984110001386263189L}).toString(), e);
                            }
                        } finally {
                            zaa(dataOutputStream);
                        }
                    } catch (FileNotFoundException unused) {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{-169966616675335675L, 4561045451790574065L, 2617542145025507011L, -3605153643540038076L, 6247806613905404459L, 9218878202804387191L, -5033103291161324742L}).toString());
                    }
                } catch (IOException e2) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{952178366652146174L, 759810779114166351L, -1143106263965659716L, -3948007642339680613L, -3037363496303666419L}).toString(), e2);
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-3304720759291051407L, 755036379153098370L, 5723033089569397862L, -3720931840416725591L, 8964359019612334058L, 8546464499289882797L, -2891190235938435452L, 4600810299243599893L, -4163033275429998073L, 5689931174877530511L}).toString());
            }
        }
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zab, i | 1, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zac);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        this.zab = null;
    }

    @KeepForSdk
    public BitmapTeleporter(@NonNull Bitmap bitmap) {
        this.zaa = 1;
        this.zab = null;
        this.zac = 0;
        this.zad = bitmap;
        this.zae = true;
    }
}
