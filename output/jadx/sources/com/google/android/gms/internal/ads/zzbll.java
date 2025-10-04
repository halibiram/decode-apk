package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbll extends RemoteCreator {
    @VisibleForTesting
    public zzbll() {
        super(new ObfuscatedString(new long[]{-965764779352745724L, -7536762736199671885L, 6156532550839722297L, 6222909203106182703L, 6228977158598132490L, 947617278639432739L, 2145357477922483017L, -3872815545620236002L, 4696666104655104216L}).toString());
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2600646531514814716L, -7300813705035439780L, -8228523512169179671L, -8721738358346353288L, -4625418307909637097L, -3426705918706320663L, 1146046687106398670L, 3483186263881716658L, 4064844470238302850L, 6264591295384567321L, -6224691813452796168L}).toString());
        if (queryLocalInterface instanceof zzbjt) {
            return (zzbjt) queryLocalInterface;
        }
        return new zzbjr(iBinder);
    }

    @Nullable
    public final zzbjq zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        zzbjq zzbjoVar;
        try {
            IBinder zze = ((zzbjt) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), ObjectWrapper.wrap(frameLayout), ObjectWrapper.wrap(frameLayout2), 240304000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{-4930201631848851070L, 4125543440527679824L, 451097095825204932L, -667560410113229280L, -7421978880965933259L, 3607545070407445010L, 8590696246013843667L, -8366895977281575942L, -4108798033268426443L, -1182744068445475931L}).toString());
            if (queryLocalInterface instanceof zzbjq) {
                zzbjoVar = (zzbjq) queryLocalInterface;
            } else {
                zzbjoVar = new zzbjo(zze);
            }
            return zzbjoVar;
        } catch (RemoteException e) {
            e = e;
            zzcec.zzk(new ObfuscatedString(new long[]{1739458132290264443L, 828367543198941859L, -1542287076030754239L, 272728350873576854L, -4498799655052621444L, -4556718207988136366L, -4740460062706913920L}).toString(), e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            e = e2;
            zzcec.zzk(new ObfuscatedString(new long[]{1739458132290264443L, 828367543198941859L, -1542287076030754239L, 272728350873576854L, -4498799655052621444L, -4556718207988136366L, -4740460062706913920L}).toString(), e);
            return null;
        }
    }
}
