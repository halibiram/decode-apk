package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfst {

    @VisibleForTesting
    final zzfsw zza;

    @VisibleForTesting
    final boolean zzb;

    private zzfst(zzfsw zzfswVar) {
        this.zza = zzfswVar;
        this.zzb = zzfswVar != null;
    }

    public static zzfst zzb(Context context, String str, String str2) {
        zzfsw zzfsuVar;
        try {
            try {
                try {
                    IBinder instantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, new ObfuscatedString(new long[]{-1308618269171260644L, -3090247450645572636L, -1851034984117275853L, -1011176370315834771L, 6283494516353808238L, 6986489393807735227L}).toString()).instantiate(new ObfuscatedString(new long[]{-7178522254065055825L, -4620956177017759689L, -1337477359071762475L, 6230151095047920521L, 359473433313582605L, -239099337373647440L, 9178912315911180203L, -8460676799462451682L, 5696361767722841476L, -4509330624741281068L}).toString());
                    if (instantiate == null) {
                        zzfsuVar = null;
                    } else {
                        IInterface queryLocalInterface = instantiate.queryLocalInterface(new ObfuscatedString(new long[]{-7811226095723252746L, 6139671401307109573L, 7144912124256354846L, 899200723045082718L, 6908869573691070538L, 8890897958050127577L, 7284025749554651185L, -4770691825176665857L, 3139578680162928762L}).toString());
                        if (queryLocalInterface instanceof zzfsw) {
                            zzfsuVar = (zzfsw) queryLocalInterface;
                        } else {
                            zzfsuVar = new zzfsu(instantiate);
                        }
                    }
                    zzfsuVar.zze(ObjectWrapper.wrap(context), str, null);
                    new ObfuscatedString(new long[]{9131934543454512143L, 2824597308516723002L}).toString();
                    new ObfuscatedString(new long[]{-8780285678185211041L, -4789171793299646624L, 2867110063032630643L, -394430161723173633L, 1225396700454756820L}).toString();
                    return new zzfst(zzfsuVar);
                } catch (Exception e) {
                    throw new zzfrv(e);
                }
            } catch (Exception e2) {
                throw new zzfrv(e2);
            }
        } catch (RemoteException | zzfrv | NullPointerException | SecurityException unused) {
            new ObfuscatedString(new long[]{6834551692620776166L, 8170523134526195109L}).toString();
            new ObfuscatedString(new long[]{314673876234988891L, -1375506535107548967L, 8706237866357894359L, 2542519028860997133L, 9045952914630542649L}).toString();
            return new zzfst(new zzfsx());
        }
    }

    public static zzfst zzc() {
        zzfsx zzfsxVar = new zzfsx();
        new ObfuscatedString(new long[]{-3645447373513234029L, 2388239849004848387L}).toString();
        new ObfuscatedString(new long[]{-8426316521568521558L, 4539369876054315444L, 6664790050293976983L, -3169825213563060650L, -8456245984340512401L}).toString();
        return new zzfst(zzfsxVar);
    }

    public final zzfss zza(byte[] bArr) {
        return new zzfss(this, bArr, null);
    }
}
