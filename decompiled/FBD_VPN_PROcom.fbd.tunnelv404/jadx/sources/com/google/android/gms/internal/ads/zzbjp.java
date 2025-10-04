package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbjp extends zzayh implements zzbjq {
    public zzbjp() {
        super(new ObfuscatedString(new long[]{2108884942205554289L, -6912183096812953444L, -8599041974980293277L, -1749532848321112376L, 2283169738194278051L, 8687893440405274899L, -2935482523958716849L, -2909827711819150791L, -6900343941361719613L, 9030122707687753197L}).toString());
    }

    public static zzbjq zzbJ(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-4195284203059346945L, 3626725097879228392L, -7754473128471310678L, -555408622819852233L, -7286001151189146075L, -3756619083716866689L, 5657610206919103249L, -8594481696986563545L, 6042499031812739160L, -4404278534720515575L}).toString());
        if (queryLocalInterface instanceof zzbjq) {
            return (zzbjq) queryLocalInterface;
        }
        return new zzbjo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbjj zzbjhVar;
        switch (i) {
            case 1:
                String readString = parcel.readString();
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzbE(readString, asInterface);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString2 = parcel.readString();
                zzayi.zzc(parcel);
                IObjectWrapper zzb = zzb(readString2);
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzb);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzbI(asInterface2);
                parcel2.writeNoException();
                return true;
            case 4:
                zzc();
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                parcel.readInt();
                zzayi.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzbF(asInterface3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzd(asInterface4);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbjhVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{3920748231828199090L, -199782011253193524L, 7822232165631523227L, 5495134512935120341L, 5239121609482018195L, -3383453375395410092L, -8075609082154502960L, 8942473365288652199L, 4034082141134863018L}).toString());
                    if (queryLocalInterface instanceof zzbjj) {
                        zzbjhVar = (zzbjj) queryLocalInterface;
                    } else {
                        zzbjhVar = new zzbjh(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzbG(zzbjhVar);
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzbH(asInterface5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
