package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class zzhai {
    public static final zzhai zza;
    public static final zzhai zzb;
    public static final zzhai zzc;
    public static final zzhai zzd;
    public static final zzhai zze;
    public static final zzhai zzf;
    public static final zzhai zzg;
    public static final zzhai zzh;
    public static final zzhai zzi;
    public static final zzhai zzj;
    private static final /* synthetic */ zzhai[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzhai zzhaiVar = new zzhai(new ObfuscatedString(new long[]{6697551531765422479L, -9003583195004481391L}).toString(), 0, Void.class, Void.class, null);
        zza = zzhaiVar;
        Class cls = Integer.TYPE;
        zzhai zzhaiVar2 = new zzhai(new ObfuscatedString(new long[]{-7280919251286389067L, 6816478354033819659L}).toString(), 1, cls, Integer.class, 0);
        zzb = zzhaiVar2;
        zzhai zzhaiVar3 = new zzhai(new ObfuscatedString(new long[]{-4936037139170009150L, -4189997519076355992L}).toString(), 2, Long.TYPE, Long.class, 0L);
        zzc = zzhaiVar3;
        zzhai zzhaiVar4 = new zzhai(new ObfuscatedString(new long[]{-4577169863517128154L, 2024514872601347961L}).toString(), 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzhaiVar4;
        zzhai zzhaiVar5 = new zzhai(new ObfuscatedString(new long[]{8353828113841259689L, 4398495293721509692L}).toString(), 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzhaiVar5;
        zzhai zzhaiVar6 = new zzhai(new ObfuscatedString(new long[]{6601755792164866096L, 3211360982417026172L}).toString(), 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzhaiVar6;
        zzhai zzhaiVar7 = new zzhai(new ObfuscatedString(new long[]{-4537369746244954503L, 2857612893117686103L}).toString(), 6, String.class, String.class, new ObfuscatedString(new long[]{-4502482197945940526L}).toString());
        zzg = zzhaiVar7;
        zzhai zzhaiVar8 = new zzhai(new ObfuscatedString(new long[]{-8798413296127048884L, -334553531639437349L, 4644970268372361112L}).toString(), 7, zzgyl.class, zzgyl.class, zzgyl.zzb);
        zzh = zzhaiVar8;
        zzhai zzhaiVar9 = new zzhai(new ObfuscatedString(new long[]{-7854732364761811713L, -7059533614918181539L}).toString(), 8, cls, Integer.class, null);
        zzi = zzhaiVar9;
        zzhai zzhaiVar10 = new zzhai(new ObfuscatedString(new long[]{3119604336099154004L, -7000265997905381690L}).toString(), 9, Object.class, Object.class, null);
        zzj = zzhaiVar10;
        zzk = new zzhai[]{zzhaiVar, zzhaiVar2, zzhaiVar3, zzhaiVar4, zzhaiVar5, zzhaiVar6, zzhaiVar7, zzhaiVar8, zzhaiVar9, zzhaiVar10};
    }

    private zzhai(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzhai[] values() {
        return (zzhai[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
