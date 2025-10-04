package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfgp {
    public final List zza;
    public final String zzb;
    public final int zzc;
    public final String zzd;
    public final int zze;
    public final long zzf;
    public final boolean zzg;
    public final String zzh;

    @Nullable
    public final zzfgo zzi;
    public final Bundle zzj;
    public final String zzk;
    public final String zzl;
    public final String zzm;
    public final JSONObject zzn;
    public final String zzo;
    public final int zzp;

    public zzfgp(JsonReader jsonReader) {
        int i;
        JSONObject jSONObject;
        int i2;
        int i3 = 3;
        List emptyList = Collections.emptyList();
        Bundle bundle = new Bundle();
        JSONObject jSONObject2 = new JSONObject();
        jsonReader.beginObject();
        int i4 = 0;
        String obfuscatedString = new ObfuscatedString(new long[]{-3531846444129500249L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-4109271162273742877L}).toString();
        String obfuscatedString3 = new ObfuscatedString(new long[]{6148045950909003989L}).toString();
        String obfuscatedString4 = new ObfuscatedString(new long[]{-6472333020416278852L}).toString();
        String obfuscatedString5 = new ObfuscatedString(new long[]{-7018754643519951978L}).toString();
        String obfuscatedString6 = new ObfuscatedString(new long[]{3753238786752709675L}).toString();
        String obfuscatedString7 = new ObfuscatedString(new long[]{-6531789485366115295L}).toString();
        String str = obfuscatedString6;
        zzfgo zzfgoVar = null;
        long j = 0;
        boolean z = false;
        int i5 = 1;
        String str2 = obfuscatedString5;
        int i6 = 0;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str3 = obfuscatedString;
            long[] jArr = new long[i3];
            // fill-array-data instruction
            jArr[0] = -279320612611268458L;
            jArr[1] = 2848376397814957077L;
            jArr[2] = 5674437412658925898L;
            if (new ObfuscatedString(jArr).toString().equals(nextName)) {
                emptyList = com.google.android.gms.ads.internal.util.zzbw.zzd(jsonReader);
            } else {
                long[] jArr2 = new long[i3];
                // fill-array-data instruction
                jArr2[0] = -4624366360909792237L;
                jArr2[1] = 970033651809950273L;
                jArr2[2] = -3945060314714152778L;
                if (new ObfuscatedString(jArr2).toString().equals(nextName)) {
                    i4 = jsonReader.nextInt();
                } else {
                    long[] jArr3 = new long[i3];
                    // fill-array-data instruction
                    jArr3[0] = -850229419281840276L;
                    jArr3[1] = 2607989030587442342L;
                    jArr3[2] = 2193016602130003569L;
                    if (new ObfuscatedString(jArr3).toString().equals(nextName)) {
                        obfuscatedString7 = jsonReader.nextString();
                    } else if (new ObfuscatedString(new long[]{-6651612530605391650L, -388255796887376992L, 8013864584293683985L, -6324740448878626022L, 2064593405539957817L}).toString().equals(nextName)) {
                        str = jsonReader.nextString();
                    } else if (new ObfuscatedString(new long[]{-2780432136565866772L, 9054142391533461249L, 5031980096938548191L}).toString().equals(nextName)) {
                        z = jsonReader.nextBoolean();
                    } else if (new ObfuscatedString(new long[]{4097896937707992465L, -189228316257694483L, -8912835181195614931L}).toString().equals(nextName)) {
                        i6 = jsonReader.nextInt();
                    } else if (new ObfuscatedString(new long[]{-5636850058323765742L, 6482091447734358038L}).toString().equals(nextName)) {
                        j = jsonReader.nextLong();
                    } else if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzig)).booleanValue() && new ObfuscatedString(new long[]{-2410851659260013477L, -353278386792044050L, 5760317185684463713L}).toString().equals(nextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                        zzfgoVar = new zzfgo(jsonReader);
                    } else if (new ObfuscatedString(new long[]{8957471984605294156L, -8687625662494077370L, -134501360126861769L}).toString().equals(nextName)) {
                        str2 = jsonReader.nextString();
                    } else {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjU)).booleanValue()) {
                            i = 5;
                            if (Objects.equals(nextName, new ObfuscatedString(new long[]{-4356653663785077837L, 7755573603939339538L, 7669699641779630122L, -1689552084673373349L, 6040893618397491926L}).toString())) {
                                jsonReader.nextBoolean();
                            }
                        } else {
                            i = 5;
                        }
                        long[] jArr4 = new long[i];
                        // fill-array-data instruction
                        jArr4[0] = -7078793178583233119L;
                        jArr4[1] = -8497411799765083653L;
                        jArr4[2] = 3892932744549875204L;
                        jArr4[3] = 1085473000619074086L;
                        jArr4[4] = 5562829525261173055L;
                        if (new ObfuscatedString(jArr4).toString().equals(nextName)) {
                            str3 = jsonReader.nextString();
                        } else if (new ObfuscatedString(new long[]{415442594769032127L, 3768453290729973758L, -5853527742944991116L, 9194887507146754820L}).toString().equals(nextName)) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgQ)).booleanValue()) {
                                try {
                                    Bundle zza = com.google.android.gms.ads.internal.util.zzbw.zza(com.google.android.gms.ads.internal.util.zzbw.zzh(jsonReader));
                                    if (zza != null) {
                                        bundle = zza;
                                    }
                                } catch (IOException | JSONException unused) {
                                } catch (IllegalStateException unused2) {
                                    jsonReader.skipValue();
                                }
                            } else {
                                jsonReader.skipValue();
                            }
                        } else if (new ObfuscatedString(new long[]{6080534557828063012L, -6543743497089538615L, -8108726456532211473L, 8356394162807272763L}).toString().equals(nextName)) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjg)).booleanValue()) {
                                obfuscatedString3 = jsonReader.nextString();
                            } else {
                                jsonReader.skipValue();
                            }
                        } else if (new ObfuscatedString(new long[]{8419738776826164177L, -148891629638681167L, -5782647851238667967L}).toString().equals(nextName)) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjg)).booleanValue()) {
                                obfuscatedString4 = jsonReader.nextString();
                            } else {
                                jsonReader.skipValue();
                            }
                        } else {
                            zzbfu zzbfuVar = zzbgc.zzjh;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                                jSONObject = jSONObject2;
                                if (Objects.equals(nextName, new ObfuscatedString(new long[]{-8193557088011051599L, 4436012613714435051L, 577113369733012077L}).toString())) {
                                    obfuscatedString2 = jsonReader.nextString();
                                    obfuscatedString = str3;
                                    jSONObject2 = jSONObject;
                                    i3 = 3;
                                }
                            } else {
                                jSONObject = jSONObject2;
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                                i2 = 4;
                                if (Objects.equals(nextName, new ObfuscatedString(new long[]{9023398207777206049L, -3543894928180831737L, 973523554040207379L, -6133353159951061642L}).toString())) {
                                    jSONObject = com.google.android.gms.ads.internal.util.zzbw.zzh(jsonReader);
                                    obfuscatedString = str3;
                                    jSONObject2 = jSONObject;
                                    i3 = 3;
                                }
                            } else {
                                i2 = 4;
                            }
                            long[] jArr5 = new long[i2];
                            // fill-array-data instruction
                            jArr5[0] = -3430503617412323107L;
                            jArr5[1] = 5056387758431297806L;
                            jArr5[2] = 5091069695131479087L;
                            jArr5[3] = 1648148988941831303L;
                            if (Objects.equals(nextName, new ObfuscatedString(jArr5).toString())) {
                                i5 = Math.max(1, jsonReader.nextInt());
                            } else {
                                jsonReader.skipValue();
                            }
                            obfuscatedString = str3;
                            jSONObject2 = jSONObject;
                            i3 = 3;
                        }
                    }
                }
            }
            jSONObject = jSONObject2;
            obfuscatedString = str3;
            jSONObject2 = jSONObject;
            i3 = 3;
        }
        jsonReader.endObject();
        this.zza = emptyList;
        this.zzc = i4;
        this.zzb = obfuscatedString7;
        this.zzd = str;
        this.zze = i6;
        this.zzf = j;
        this.zzi = zzfgoVar;
        this.zzg = z;
        this.zzh = str2;
        this.zzj = bundle;
        this.zzk = obfuscatedString4;
        this.zzl = obfuscatedString3;
        this.zzm = obfuscatedString2;
        this.zzn = jSONObject2;
        this.zzo = obfuscatedString;
        zzbhm zzbhmVar = zzbif.zza;
        this.zzp = ((Long) zzbhmVar.zze()).longValue() > 0 ? ((Long) zzbhmVar.zze()).intValue() : i5;
    }
}
