package com.google.android.play.core.appupdate;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.install.InstallState;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzc extends com.google.android.play.core.appupdate.internal.zzl {
    public zzc(Context context) {
        super(new com.google.android.play.core.appupdate.internal.zzm(new ObfuscatedString(new long[]{-325895789461776949L, 2921825955689379625L, -5706972009251263066L, 6077275192972963296L, 315277552335118837L}).toString()), new IntentFilter(new ObfuscatedString(new long[]{-1541230913901739730L, -297724972652835477L, 393607796034910198L, 3961782761495092630L, -5045819667624833116L, 9047955163326366149L, 8684041787312845103L, -5896409778572894686L, -7441347811485941586L}).toString()), context);
    }

    @Override // com.google.android.play.core.appupdate.internal.zzl
    public final void zza(Context context, Intent intent) {
        if (!context.getPackageName().equals(intent.getStringExtra(new ObfuscatedString(new long[]{5162952873227416974L, -9181035288451165782L, 3335642450881173642L}).toString()))) {
            this.zza.zza(new ObfuscatedString(new long[]{-7082890225534459502L, -2982577161038959167L, 6822325118580748069L, -3762222738540499956L, 4171858311212584716L, -1665835398583461206L, -4302989499148958212L, 3775074848276387151L, 4938664948823011217L, -8644656289228383483L, -7625524659473556745L}).toString(), intent.getStringExtra(new ObfuscatedString(new long[]{-6539112099284617501L, 7032996988011593232L, 4851021758925985363L}).toString()));
            return;
        }
        this.zza.zza(new ObfuscatedString(new long[]{-5662197303808022062L, -571298530329935567L, 1313933149606816166L, 6749277325921984341L, 898257845379821512L, 8503003500766306188L}).toString(), new Object[0]);
        for (String str : intent.getExtras().keySet()) {
            this.zza.zza(new ObfuscatedString(new long[]{2359848969561518443L, 6558923806283238802L, -3382265861467499845L, -4383106024553239660L}).toString(), str, intent.getExtras().get(str));
        }
        InstallState zzb = InstallState.zzb(intent, this.zza);
        this.zza.zza(new ObfuscatedString(new long[]{-456997168019800180L, -7044323837977024532L, -7667253665760931512L, -7469913668228971357L, -6315956351539072922L, -2942362995495586475L, -8331434088960403526L}).toString(), zzb);
        zzd(zzb);
    }
}
