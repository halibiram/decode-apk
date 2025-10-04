package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import com.panda912.muddy.ObfuscatedString;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

@SafeParcelable.Class(creator = "LargeParcelTeleporterCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes2.dex */
public final class zzbzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbzc> CREATOR = new zzbzd();

    @SafeParcelable.Field(id = 2)
    ParcelFileDescriptor zza;
    private Parcelable zzb = null;
    private boolean zzc = true;

    @SafeParcelable.Constructor
    public zzbzc(@SafeParcelable.Param(id = 2) ParcelFileDescriptor parcelFileDescriptor) {
        this.zza = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        if (this.zza == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzb.writeToParcel(obtain, 0);
                final byte[] marshall = obtain.marshall();
                obtain.recycle();
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    createPipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
                } catch (IOException e) {
                    e = e;
                    autoCloseOutputStream = null;
                }
                try {
                    zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbzb
                        @Override // java.lang.Runnable
                        public final void run() {
                            DataOutputStream dataOutputStream;
                            Parcelable.Creator<zzbzc> creator = zzbzc.CREATOR;
                            OutputStream outputStream = autoCloseOutputStream;
                            byte[] bArr = marshall;
                            DataOutputStream dataOutputStream2 = null;
                            try {
                                try {
                                    dataOutputStream = new DataOutputStream(outputStream);
                                } catch (IOException e2) {
                                    e = e2;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                dataOutputStream.writeInt(bArr.length);
                                dataOutputStream.write(bArr);
                                IOUtils.closeQuietly(dataOutputStream);
                            } catch (IOException e3) {
                                e = e3;
                                dataOutputStream2 = dataOutputStream;
                                zzcec.zzh(new ObfuscatedString(new long[]{4591695934666594793L, 8481072184232917470L, -1787293958413920202L, 989538737907913591L, 4757242561608647386L, 6239817153920006141L}).toString(), e);
                                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4937161595379106688L, -6242973914313180554L, 729756808550856672L, -2751175563750204633L, 4662473932888731255L}).toString());
                                if (dataOutputStream2 == null) {
                                    IOUtils.closeQuietly(outputStream);
                                } else {
                                    IOUtils.closeQuietly(dataOutputStream2);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                dataOutputStream2 = dataOutputStream;
                                if (dataOutputStream2 == null) {
                                    IOUtils.closeQuietly(outputStream);
                                } else {
                                    IOUtils.closeQuietly(dataOutputStream2);
                                }
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = createPipe[0];
                } catch (IOException e2) {
                    e = e2;
                    zzcec.zzh(new ObfuscatedString(new long[]{-2572762171816311496L, -1273937720304487125L, 6367125125779371155L, 7803051625336804855L, -7706857849614520027L, -5379431603358576L}).toString(), e);
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-8105252342665541039L, 5525247580030178032L, 4783250732018189901L, 8764668316256912095L, 7655071195197700742L}).toString());
                    IOUtils.closeQuietly(autoCloseOutputStream);
                    this.zza = parcelFileDescriptor;
                    int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
                    SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
                    SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
                }
                this.zza = parcelFileDescriptor;
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        int beginObjectHeader2 = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zza, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader2);
    }

    public final SafeParcelable zza(Parcelable.Creator creator) {
        if (this.zzc) {
            if (this.zza == null) {
                zzcec.zzg(new ObfuscatedString(new long[]{8166734844629851551L, 270992262376078925L, 1835394290063848525L, -4595335192613060247L, -2082317399149140937L, 4709140844920530573L, -2476577516896714012L}).toString());
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zza));
            try {
                try {
                    int readInt = dataInputStream.readInt();
                    byte[] bArr = new byte[readInt];
                    dataInputStream.readFully(bArr, 0, readInt);
                    IOUtils.closeQuietly(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, readInt);
                        obtain.setDataPosition(0);
                        this.zzb = (Parcelable) creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.zzc = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{-5698417338728964772L, -7714470870072403711L, 3959645394050587986L, 6287154254621992674L, 1988109275766972164L, -4547715599025282905L, 6872791181798167359L}).toString(), e);
                    IOUtils.closeQuietly(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.closeQuietly(dataInputStream);
                throw th2;
            }
        }
        return (SafeParcelable) this.zzb;
    }
}
