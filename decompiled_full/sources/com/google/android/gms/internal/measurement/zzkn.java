package com.google.android.gms.internal.measurement;

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
public final class zzkn {
    public static final zzkn zza;
    public static final zzkn zzb;
    public static final zzkn zzc;
    public static final zzkn zzd;
    public static final zzkn zze;
    public static final zzkn zzf;
    public static final zzkn zzg;
    public static final zzkn zzh;
    public static final zzkn zzi;
    public static final zzkn zzj;
    private static final /* synthetic */ zzkn[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzkn zzknVar = new zzkn(new ObfuscatedString(new long[]{-4981964914629539368L, -9215497342585912069L}).toString(), 0, Void.class, Void.class, null);
        zza = zzknVar;
        String obfuscatedString = new ObfuscatedString(new long[]{-6341923207104167427L, 6433076408142174445L}).toString();
        Class cls = Integer.TYPE;
        zzkn zzknVar2 = new zzkn(obfuscatedString, 1, cls, Integer.class, 0);
        zzb = zzknVar2;
        zzkn zzknVar3 = new zzkn(new ObfuscatedString(new long[]{5768969273484806047L, 152787279209699533L}).toString(), 2, Long.TYPE, Long.class, 0L);
        zzc = zzknVar3;
        zzkn zzknVar4 = new zzkn(new ObfuscatedString(new long[]{1077681359999038082L, 5442372804254023715L}).toString(), 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzknVar4;
        zzkn zzknVar5 = new zzkn(new ObfuscatedString(new long[]{8548283018710041733L, -1820183172187581596L}).toString(), 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzknVar5;
        zzkn zzknVar6 = new zzkn(new ObfuscatedString(new long[]{8809868259852723124L, -8165502741075906879L}).toString(), 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzknVar6;
        zzkn zzknVar7 = new zzkn(new ObfuscatedString(new long[]{6697091044792863905L, 3845572639658518753L}).toString(), 6, String.class, String.class, new ObfuscatedString(new long[]{-4156916367320584185L}).toString());
        zzg = zzknVar7;
        zzkn zzknVar8 = new zzkn(new ObfuscatedString(new long[]{8252884808091622677L, 4343413085224773378L, -8933358014319204565L}).toString(), 7, zzjb.class, zzjb.class, zzjb.zzb);
        zzh = zzknVar8;
        zzkn zzknVar9 = new zzkn(new ObfuscatedString(new long[]{7443846325705033770L, -3131371162296782700L}).toString(), 8, cls, Integer.class, null);
        zzi = zzknVar9;
        zzkn zzknVar10 = new zzkn(new ObfuscatedString(new long[]{8778118093499045212L, 2721406753633181044L}).toString(), 9, Object.class, Object.class, null);
        zzj = zzknVar10;
        zzk = new zzkn[]{zzknVar, zzknVar2, zzknVar3, zzknVar4, zzknVar5, zzknVar6, zzknVar7, zzknVar8, zzknVar9, zzknVar10};
    }

    private zzkn(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzkn[] values() {
        return (zzkn[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
